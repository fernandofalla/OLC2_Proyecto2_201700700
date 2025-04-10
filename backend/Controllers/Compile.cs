using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using analyzer;
using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class Compile : Controller
    {
        private readonly ILogger<Compile> _logger;

        public Compile(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View("Error!");
        }

        public class CompileRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // Get /compile/errors
        [HttpGet("error")]
        public IActionResult GetErrors()
        {
            if (ReporteCompiler.Errors.Count == 0)
            {
                return Ok(new { message = "No errors" });
            }
            return Ok(ReporteCompiler.Errors);
        }

        // Get /compile/symbols
        [HttpGet("symbols")]
        public IActionResult GetSymbols()
        {
            if (ReporteCompiler.Symbols.Count == 0)
            {
                return Ok(new { message = "No symbols" });
            }
            return Ok(ReporteCompiler.Symbols);
        }

        // Get /compile/ast
        [HttpPost("ast")]
        public async Task<IActionResult> GetAST([FromBody] CompileRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(new { error = "Invalid request" });
            }

            string grammarPath = Path.Combine(Directory.GetCurrentDirectory(), "Language.g4");
            var grammar = "";
            try{
                if(System.IO.File.Exists(grammarPath)){
                    grammar = await System.IO.File.ReadAllTextAsync(grammarPath);
                }             
                else 
                {
                    return BadRequest(new { error = "Grammar file not found" });
                }   
            }
            catch (System.Exception)
            {
                return BadRequest(new { error = "Error reading grammar file" });
            }

            var payload = new {
                grammar,
                lexgrammar = "",
                input = request.code,
                start = "program"
            };

            var jsonPayload = JsonSerializer.Serialize(payload);
            var context = new StringContent(jsonPayload, Encoding.UTF8, "application/json");

            using (var client = new HttpClient())
            {
                try
                {   
                    Console.WriteLine("Requesting AST");
                    HttpResponseMessage response = await client.PostAsync("http://lab.antlr.org/parse/", context);
                    response.EnsureSuccessStatusCode();
                    string result = await response.Content.ReadAsStringAsync();

                    using var doc = JsonDocument.Parse(result);
                    var root = doc.RootElement;

                    if(root.TryGetProperty("result", out JsonElement resultElement)&& resultElement.TryGetProperty("svgtree", out JsonElement svgtreeElement))
                    {
                        Console.WriteLine("AST received");
                        string svgtree = svgtreeElement.GetString() ?? string.Empty;
                        return Content(svgtree, "image/svg+xml");    
                    }
                    return BadRequest(new { error = "Error parsing AST" });
                }
                catch (HttpRequestException e)
                {
                    return BadRequest(new { error = e.Message });
                }
            }            
        }

        // POST /compile
        [HttpPost("run")]
        public IActionResult Post([FromBody] CompileRequest request)
        {
            Console.WriteLine("Request received");
            ReporteCompiler.Clear();
            if (!ModelState.IsValid)
            {
                return BadRequest(new { error = "Invalid request" });
            }

            var inputStream = new AntlrInputStream(request.code);
            var lexer = new LanguageLexer(inputStream);

            // Remove default error listeners
            lexer.RemoveErrorListeners();
            lexer.AddErrorListener(new LexicalError());

            var tokens = new CommonTokenStream(lexer);
            var parser = new LanguageParser(tokens);

            // Remove default error listeners
            parser.RemoveErrorListeners();
            parser.AddErrorListener(new SyntaxErrorListener());

            try
            {
                var tree = parser.program();
                var interpreter = new InterpreterVisitor();
                interpreter.Visit(tree);

                var compiler = new CompilerVisitor();
                compiler.Visit(tree);

                return Ok(new { result = compiler.c.ToString() });
            }
            catch (ParseCanceledException e)
            {
                return BadRequest(new { error = e.Message });
            }
            catch (SemanticError e)
            {
                return BadRequest(new { error = e.Message });
            }

        }

    }
}