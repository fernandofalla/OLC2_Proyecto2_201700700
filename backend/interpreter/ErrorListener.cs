using Antlr4.Runtime;
using Antlr4.Runtime.Misc;

public class SemanticError : Exception
{
    private string message;

    private Antlr4.Runtime.IToken token;

    public SemanticError(string message, Antlr4.Runtime.IToken token)
    {
        this.message = message;
        this.token = token;
        int linea = token.Line;
        int columna = token.Column;
        ReporteCompiler.AddError(new ErrorCompiler("Semantico", message, linea, columna));
    }

    public override string Message
    {
        get
        {
            if(token == null)
            {
                return $"Error semantico: {message}";
            }
            return $"Error semantico: {message} en la linea {token.Line} y columna {token.Column}";
        }        
    }
}

public class LexicalError: BaseErrorListener, IAntlrErrorListener<int>
{
    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        ReporteCompiler.AddError(new ErrorCompiler("Lexico", msg, line, charPositionInLine));
        throw new ParseCanceledException($"Error lexico: {msg} en la linea {line} y columna {charPositionInLine}");        
    }
}

public class SyntaxErrorListener : BaseErrorListener
{
    public override void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        ReporteCompiler.AddError(new ErrorCompiler("Sintactico", msg, line, charPositionInLine));
        throw new ParseCanceledException($"Error sintactico: {msg} en la linea {line} y columna {charPositionInLine}");
    }
}

public class ErrorCompiler
{
    public string Type { get; set; }
    public string Message { get; set; }
    public int Line { get; set; }
    public int Column { get; set; }

    public ErrorCompiler(string type, string message, int line, int column)
    {
        Type = type;
        Message = message;
        Line = line;
        Column = column;
    }
}

public class Simbolo
{
    public string Name { get; set; }
    public string Type { get; set; }
    public string Value { get; set; }
    public int Line { get; set; }
    public int Column { get; set; }

    public Simbolo(string id, string type, ValueWrapper value, int line, int column)
    {
        Name = id;
        Type = type;
        Value = GetValueAsString(value);
        Line = line;
        Column = column;
    }

    private string GetValueAsString(ValueWrapper value)
    {
        return value switch
        {
            IntValue v => v.Value.ToString(),
            DoubleValue v => v.Value.ToString(),
            StringValue v => v.Value,
            BoolValue v => v.Value.ToString(),
            NullValue => "null",
            VoidValue => "void",
            ArrayValue v => $"Array<{v.Tipo}>",
            MatrixValue v => $"Matrix<{v.Tipo}>",
            RuneValue v => v.Value.ToString(),
            FunctionValue v => "function",
            StructValue v => $"Struct<{v.Id}>",
            _ => "unknown"
        };
    }
}

public static class ReporteCompiler{
    public static List<ErrorCompiler> Errors = new List<ErrorCompiler>();
    public static List<Simbolo> Symbols = new List<Simbolo>();

    public static void AddError(ErrorCompiler error)
    {
        Errors.Add(error);
    }

    public static void AddSymbol(Simbolo symbol)
    {
        Symbols.Add(symbol);
    }

    public static void Clear()
    {
        Errors.Clear();
        Symbols.Clear();
    }
}