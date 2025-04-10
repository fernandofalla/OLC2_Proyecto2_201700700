using System.Text;

public class Embeded
{
    public static void Generate(Environment env)
    {
        // env.Declare("fmt", new StringValue("fmt"), null);

        // env.Declare("fmt.Println", new FunctionValue(new PrintEmbeded(), "print"), null);
        // env.Declare("strconv.Atoi", new FunctionValue(new AtoiEmbeded(), "atoi"), null);
        // env.Declare("strconv.ParseFloat", new FunctionValue(new ParseFloatEmbeded(), "parsefloat"), null);
        // env.Declare("reflect.TypeOf", new FunctionValue(new TypeOfEmbeded(), "typeof"), null);

        //env.Declare("fmt.Println", new FunctionValue(new PrintEmbeded(), "print"), null);
        env.Declare("strconv.Atoi", new FunctionValue(new AtoiEmbeded(), "atoi"), null);
        env.Declare("strconv.ParseFloat", new FunctionValue(new ParseFloatEmbeded(), "parsefloat"), null);
        env.Declare("reflect.TypeOf", new FunctionValue(new TypeOfEmbeded(), "typeof"), null);
    }
}

public class PrintEmbeded : Invocable
{
    public int Arity()
    {
        return -1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var output = "";
        foreach (var arg in args)
        {
            output += arg switch
            {
                IntValue i => i.Value.ToString() + " ",
                DoubleValue d => d.Value.ToString() + " ",
                StringValue s => s.Value + " ",
                BoolValue b => b.Value.ToString() + " ",
                RuneValue r => r.Value.ToString() + " ",
                ArrayValue a => "[" + string.Join(" ", a.Value.Select(v => FormatValue(v))) + "] ",
                VoidValue => "void ",
                FunctionValue f => "<f" + f.name + "> ",
                AccessArrayValue ac => FormatValue(ac) + " ",
                MatrixValue m => string.Join("\n", m.Value.Select(v => string.Join(", ", v.Select(w => FormatValue(w))))) + " ",
                // StructValue ss => ss.Id + "{ " + string.Join(", ", ss.Attributes.Select(v => v.Key + ": " + FormatValue(v.Value))) + " } ",
                StructValue ss => FormatStruct(ss),
                _ => throw new SemanticError("Tipo invalido para mostrar", null)
            };
        }
        output += "\n";
        visitor.output += output;
        return visitor.defaultValue;
    }


    public static string FormatValue(ValueWrapper value)
    {
        return value switch
        {
            IntValue i => i.Value.ToString(),
            DoubleValue d => d.Value.ToString(),
            StringValue s => s.Value,
            BoolValue b => b.Value.ToString(),
            RuneValue r => r.Value.ToString(),
            ArrayValue a => "[" + string.Join(", ", a.Value.Select(v => FormatValue(v))) + "]",
            MatrixValue m => "[" + string.Join("; ", m.Value.Select(row => "[" + string.Join(", ", row.Select(v => FormatValue(v))) + "]")) + "]",
            VoidValue => "void",
            FunctionValue f => "<f" + f.name + ">",
            AtributeValue attr => FormatValue(attr.Value),  // Agregado para manejar AtributeValue
            _ => throw new SemanticError("Tipo invalido para mostrar", null)
        };
    }

    // public static string FormatStruct(StructValue ss)
    // {
    //     StringBuilder sb = new StringBuilder();
    //     sb.Append(ss.Id);
    //     sb.Append("{ ");
    //     foreach (var attr in ss.Attributes)
    //     {
    //         sb.Append(attr.Key);
    //         sb.Append(": ");
    //         sb.Append(FormatValue(attr.Value));
    //         sb.Append(", ");
    //     }
    //     sb.Append("}");
    //     return sb.ToString();
    // }

    public static string FormatStruct(StructValue structValue)
    {
        return structValue.Id + " { " +
               string.Join(", ", structValue.Attributes.Select(attr =>
                   attr.Key + ": " + (attr.Value.Value != null ? FormatValue(attr.Value.Value) : "null"))) + " }";
    }



}

// strconv.Atoi

public class AtoiEmbeded : Invocable
{
    public int Arity()
    {
        return 1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args[0] is StringValue s)
        {
            if (int.TryParse(s.Value, out int result))
            {
                return new IntValue(result);
            }
            else
            {
                throw new SemanticError("No se pudo convertir el string a entero", null);
            }
        }
        else
        {
            throw new SemanticError("Tipo invalido para Atoi", null);
        }
    }
}

// strconv.ParseFloat

public class ParseFloatEmbeded : Invocable
{
    public int Arity()
    {
        return 1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args[0] is StringValue s)
        {
            if (double.TryParse(s.Value, out double result))
            {
                return new DoubleValue(result);
            }
            else
            {
                throw new SemanticError("No se pudo convertir el string a double", null);
            }
        }
        else
        {
            throw new SemanticError("Tipo invalido para ParseFloat", null);
        }
    }
}

// reflect.TypeOf()

public class TypeOfEmbeded : Invocable
{
    public int Arity()
    {
        return 1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        if (args[0] is ArrayValue a)
        {
            return new StringValue("[]" + a.Tipo);
        }
        else if (args[0] is MatrixValue m)
        {
            return new StringValue("[][]" + m.Tipo);
        }
        else if (args[0] is StructValue s)
        {
            return new StringValue(s.Id);
        }
        else if (args[0] is IntValue number)
        {
            return new StringValue("int");
        }
        else if (args[0] is DoubleValue doubleValue)
        {
            return new StringValue("float64");
        }
        else if (args[0] is StringValue stringValue)
        {
            return new StringValue("string");
        }
        else if (args[0] is BoolValue boolValue)
        {
            return new StringValue("bool");
        }
        else if (args[0] is RuneValue runeValue)
        {
            return new StringValue("rune");
        }
        else if (args[0] is FunctionValue functionValue)
        {
            return new StringValue("function");
        }
        return new StringValue(args[0].GetType().Name);
    }
}
