using analyzer;

public class ForeignFunction : Invocable
{

    private Environment clousure;
    private LanguageParser.FunctionDclInitContext context;

    public ForeignFunction(Environment clousure, LanguageParser.FunctionDclInitContext context)
    {
        this.clousure = clousure;
        this.context = context;
    }

    public int Arity()
    {
        if (context.@params() == null)
        {
            return 0;
        }
        return context.@params().ID().Length;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var newEnv = new Environment(clousure);
        var berforeCallEnv = visitor.currentEnvironment;
        visitor.currentEnvironment = newEnv;
        if (context.@params() != null)
        {
            for (int i = 0; i < context.@params().ID().Length; i++)
            {
                newEnv.Declare(context.@params().ID(i).GetText(), args[i], null);
            }
        }

        try
        {
            foreach (var statement in context.dcl())
            {
                visitor.Visit(statement);
            }
        }
        catch (ReturnException e)
        {
            visitor.currentEnvironment = berforeCallEnv;
            return e.value;
        }
        visitor.currentEnvironment = berforeCallEnv;
        return visitor.defaultValue;
    }

}


public class StructMethodFunction : Invocable
{
    private readonly string structReference;
    private readonly Environment closure;
    private readonly LanguageParser.FunctionStructDclInitContext context;

    public StructMethodFunction(string structReference, Environment closure, LanguageParser.FunctionStructDclInitContext context)
    {
        this.structReference = structReference;
        this.closure = closure;
        this.context = context;
    }

    public int Arity(){
        if (context.@params() == null)
        {
            return 0;
        }
        return context.@params().ID().Length;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args.Count != Arity() + 1)
        {   
            Console.WriteLine($"Parámetros esperados: {Arity()}");
            throw new SemanticError("Número incorrecto de argumentos", context.Start);
        }

        Console.WriteLine($"Parámetros recibidos: {args.Count}");
        Console.WriteLine(string.Join(", ", args.Select(arg => arg.ToString())));


        // Obtener la instancia del struct
        if (args[0] is not StructValue structInstance)
        {
            throw new SemanticError("El primer argumento debe ser una instancia de la estructura", context.Start);
        }

        // Crear un nuevo entorno local
        var localEnvironment = new Environment(closure);
        localEnvironment.Declare(structReference, structInstance, null);

        // Registrar parámetros
        for (int i = 0; i < Arity(); i++)
        {
            localEnvironment.Declare(context.@params().ID(i).GetText(), args[i + 1], null);
        }

        // Guardar el entorno anterior y cambiarlo
        var previousEnvironment = visitor.currentEnvironment;
        visitor.currentEnvironment = localEnvironment;

        ValueWrapper result = new VoidValue();

        try
        {
            foreach (var stmt in context.dcl())
            {
                result = visitor.Visit(stmt);
            }
        }
        catch (ReturnException e)
        {
            result = e.value;
        }
        finally
        {
            visitor.currentEnvironment = previousEnvironment;
        }

        return result;
    }
}
