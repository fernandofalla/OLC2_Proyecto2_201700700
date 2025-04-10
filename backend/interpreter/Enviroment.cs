public class Environment
{

    public Dictionary<string, ValueWrapper> variables = new Dictionary<string, ValueWrapper>();
    private Environment? parent;

    public Environment(Environment? parent)
    {
        this.parent = parent;
    }

    // TODO: parent environment

    public ValueWrapper Get(string id, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            return variables[id];
        }
        if(parent != null)
        {
            return parent.Get(id, token);
        }
        throw new SemanticError("Variable " + id + " no encontrada", token);
    }

    public bool ExistVariable(string id, Antlr4.Runtime.IToken token)
    {        
        if (variables.ContainsKey(id))
        {
            return true;
        }
        if(parent != null)
        {
            return parent.ExistVariable(id, token);
        }
        return false;
    }

    public void Declare(string id, ValueWrapper value, Antlr4.Runtime.IToken? token)
    {
        if (variables.ContainsKey(id))
        {
            if(token != null) throw new SemanticError("Variable " + id + " ya declarada", token);
        }
        else
        {
            variables[id] = value;
            string type = GetTypeName(value);
            if(token != null)
            {
                ReporteCompiler.AddSymbol(new Simbolo(id, type, value, token.Line, token.Column));
            }            
        }
    }

    public ValueWrapper Assign(string id, ValueWrapper value, Antlr4.Runtime.IToken token)
    {
        if (variables.ContainsKey(id))
        {
            variables[id] = value;
            return value;
        }
        if(parent != null)
        {
            return parent.Assign(id, value, token);
        }
        throw new SemanticError("Variable " + id + " no encontrada", token);
    }

    private string GetTypeName(ValueWrapper value)
{
    return value switch
    {
        IntValue => "int",
        DoubleValue => "float64",
        StringValue => "string",
        BoolValue => "bool",
        RuneValue => "rune",
        ArrayValue array => $"Array<{array.Tipo}>",
        MatrixValue matrix => $"Matrix<{matrix.Tipo}>",
        FunctionValue => "Function",
        StructValue structValue => $"Struct<{structValue.Id}>",
        NullValue => "Null",
        VoidValue => "Void",
        _ => "Unknown"
    };
}

}