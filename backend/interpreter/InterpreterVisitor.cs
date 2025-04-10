using System.Text.RegularExpressions;
using analyzer;

public class InterpreterVisitor : LanguageBaseVisitor<ValueWrapper>  // Cambiar int -> ValueWrapper
{
    public ValueWrapper defaultValue = new VoidValue();
    public string output = "";
    public Environment currentEnvironment;

    public InterpreterVisitor()
    {
        currentEnvironment = new Environment(null);
        Embeded.Generate(currentEnvironment);
    }

    // VisitProgram
    public override ValueWrapper VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return defaultValue;
    }

    // ExplicitVarDcl
    public override ValueWrapper VisitExplicitVarDcl(LanguageParser.ExplicitVarDclContext context)
    {
        string id = context.ID().GetText();
        if (context.tipo() != null)
        {
            if (context.expr() != null)
            {
                ValueWrapper value = Visit(context.expr());
                currentEnvironment.Declare(id, value, context.Start);
            }
            else
            {
                string tipo = context.tipo().GetText();
                if (tipo == "int")
                {
                    currentEnvironment.Declare(id, new IntValue(0), context.Start);
                }
                else if (tipo == "float64")
                {
                    currentEnvironment.Declare(id, new DoubleValue(0), context.Start);
                }
                else if (tipo == "string")
                {
                    currentEnvironment.Declare(id, new StringValue(""), context.Start);
                }
                else if (tipo == "bool")
                {
                    currentEnvironment.Declare(id, new BoolValue(false), context.Start);
                }
                else
                {
                    throw new SemanticError("Tipo invalido", context.Start);
                }
            }
        }
        else
        {
            currentEnvironment.Declare(id, defaultValue, context.Start);
        }

        return defaultValue;
    }

    // ImplicitVarDcl
    public override ValueWrapper VisitImplicitVarDcl(LanguageParser.ImplicitVarDclContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());
        currentEnvironment.Declare(id, value, context.Start);
        return defaultValue;
    }

    // VisitExprStmt
    public override ValueWrapper VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return Visit(context.expr());
    }

    // VisitBlockStmt
    public override ValueWrapper VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        Environment previousEnvironment = currentEnvironment;
        currentEnvironment = new Environment(previousEnvironment);
        foreach (var stmt in context.dcl())
        {
            Visit(stmt);
        }
        currentEnvironment = previousEnvironment;
        return defaultValue;
    }

    // VisitIfStmt
    public override ValueWrapper VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr());
        if (condition is not BoolValue)
        {
            throw new SemanticError("La condicion debe ser bool", context.Start);
        }
        try
        {
            if (!((BoolValue)condition).Value)
            {
                Visit(context.stmt(0));
            }
            else if (context.stmt().Length > 1)
            {
                Visit(context.stmt(1));
            }
        }
        catch (BreakException)
        {
            throw;
        }
        catch (ContinueException)
        {
            throw;
        }

        return defaultValue;
    }

    // VisitPrintStmt: Soporta impresión de cualquier tipo
    
    public override ValueWrapper VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        ValueWrapper value = Visit(context.expr());
        output += value switch
        {
            IntValue i => i.Value.ToString(),
            DoubleValue d => d.Value.ToString(),
            StringValue s => s.Value,
            BoolValue b => b.Value.ToString(),
            VoidValue => "void",
            FunctionValue f => "<f" + f.name + ">\n",
            _ => throw new SemanticError("Tipo invalido para mostrar", context.Start)
        };
        output += "\n";
        return defaultValue;
    }
    

    // VisitIdentifier: Puede devolver cualquier tipo de dato almacenado en el entorno
    public override ValueWrapper VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string id = context.ID().GetText();
        return currentEnvironment.Get(id, context.Start);
    }

    // VisitParens
    public override ValueWrapper VisitParens(LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }

    // VisitNegate: Solo funciona con números
    public override ValueWrapper VisitNegate(LanguageParser.NegateContext context)
    {
        ValueWrapper value = Visit(context.expr());
        return value switch
        {
            IntValue i => new IntValue(-i.Value),
            DoubleValue d => new DoubleValue(-d.Value),
            _ => throw new SemanticError("La negacion solo aplica para numeros", context.Start)
        };
    }

    // VisitNot
    public override ValueWrapper VisitNot(LanguageParser.NotContext context)
    {
        ValueWrapper value = Visit(context.expr());
        if (value is BoolValue b)
        {
            return new BoolValue(!b.Value);
        }
        throw new SemanticError("La negacion solo aplica para booleanos", context.Start);
    }

    // Nill
    public override ValueWrapper VisitNilll(LanguageParser.NilllContext context)
    {
        return new NillValue();
    }

    // VisitNumber
    public override ValueWrapper VisitNumber(LanguageParser.NumberContext context)
    {
        return new IntValue(int.Parse(context.INT().GetText()));
    }

    // VisitDecimal: Ahora devuelve un `double`
    public override ValueWrapper VisitDecimal(LanguageParser.DecimalContext context)
    {
        return new DoubleValue(double.Parse(context.DOUBLE().GetText()));
    }

    // VisitCadena: Devuelve un `string`
    public override ValueWrapper VisitCadena(LanguageParser.CadenaContext context)
    {
        string texto = context.STRING().GetText();
        if (texto.StartsWith("\"") && texto.EndsWith("\""))
        {
            texto = texto.Substring(1, texto.Length - 2);
        }
        // string procesado = Regex.Replace(texto, @"\\(.)", match =>
        // {
        //     return match.Groups[1].Value switch
        //     {
        //         "n" => "\n",
        //         "t" => "\t",
        //         "r" => "\r",
        //         "b" => "\b",
        //         "f" => "\f",
        //         "v" => "\v",
        //         "0" => "\0",
        //         "\"" => "\"",
        //         "'" => "'",
        //         "\\" => "\\",
        //         _ => match.Value
        //     };
        // });
        // return new StringValue(procesado);
        texto = Regex.Unescape(texto);
        return new StringValue(texto);
    }

    // VisitBooleano: Devuelve `true` o `false`
    public override ValueWrapper VisitBooleano(LanguageParser.BooleanoContext context)
    {
        string value = context.BOOL().GetText().ToLower();
        return new BoolValue(value == "true");
    }

    // Caracter
    public override ValueWrapper VisitCaracter(LanguageParser.CaracterContext context)
    {
        string texto = context.RUNE().GetText();
        if (texto.StartsWith("'") && texto.EndsWith("'"))
        {
            texto = texto.Substring(1, texto.Length - 2);
        }
        return new RuneValue(texto[0]);
    }

    // VisitMulDivMod: Asegurar operaciones con números
    public override ValueWrapper VisitMulDivMod(LanguageParser.MulDivModContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        if (left is NillValue || right is NillValue)
        {
            throw new SemanticError("No se puede realizar operaciones con nill", context.Start);
        }
        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "*") => new IntValue(l.Value * r.Value),
            (IntValue l, DoubleValue r, "*") => new DoubleValue(l.Value * r.Value),
            (DoubleValue l, DoubleValue r, "*") => new DoubleValue(l.Value * r.Value),
            (DoubleValue l, IntValue r, "*") => new DoubleValue(l.Value * r.Value),
            (IntValue l, IntValue r, "/") => new IntValue(l.Value / r.Value),
            (IntValue l, DoubleValue r, "/") => new DoubleValue(l.Value / r.Value),
            (DoubleValue l, DoubleValue r, "/") => new DoubleValue(l.Value / r.Value),
            (DoubleValue l, IntValue r, "/") => new DoubleValue(l.Value / r.Value),
            (IntValue l, IntValue r, "%") => new IntValue(l.Value % r.Value),
            _ => throw new SemanticError("Operacion invalida para los tipos ingresados (multiplicacion/division)", context.Start)
        };
    }

    // VisitAddSub: Soporta suma de números y concatenación de cadenas
    public override ValueWrapper VisitAddSub(LanguageParser.AddSubContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        if (left is NillValue || right is NillValue)
        {
            throw new SemanticError("No se puede realizar operaciones con nill", context.Start);
        }
        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "+") => new IntValue(l.Value + r.Value),
            (IntValue l, DoubleValue r, "+") => new DoubleValue(l.Value + r.Value),
            (DoubleValue l, IntValue r, "+") => new DoubleValue(l.Value + r.Value),
            (DoubleValue l, DoubleValue r, "+") => new DoubleValue(l.Value + r.Value),
            (StringValue l, StringValue r, "+") => new StringValue(l.Value + r.Value),
            (IntValue l, IntValue r, "-") => new IntValue(l.Value - r.Value),
            (IntValue l, DoubleValue r, "-") => new DoubleValue(l.Value - r.Value),
            (DoubleValue l, IntValue r, "-") => new DoubleValue(l.Value - r.Value),
            (DoubleValue l, DoubleValue r, "-") => new DoubleValue(l.Value - r.Value),
            _ => throw new SemanticError("Operacion invalida para los tipos ingresados (suma/resta)", context.Start)
        };

    }

    // VisitRelational: Soporta comparación de números y cadenas
    public override ValueWrapper VisitRelational(LanguageParser.RelationalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        if (left is NillValue || right is NillValue)
        {
            throw new SemanticError("No se puede realizar operaciones con nill", context.Start);
        }
        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (DoubleValue l, DoubleValue r, "<") => new BoolValue(l.Value < r.Value),
            (DoubleValue l, DoubleValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (DoubleValue l, DoubleValue r, ">") => new BoolValue(l.Value > r.Value),
            (DoubleValue l, DoubleValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (IntValue l, DoubleValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, DoubleValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, DoubleValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, DoubleValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (DoubleValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (DoubleValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (DoubleValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (DoubleValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            _ => throw new SemanticError("Operacion invalida para los tipos ingresados (relacional)", context.Start)
        };
    }

    // VisitEquality: Soporta comparación de números, cadenas y booleanos
    public override ValueWrapper VisitEquality(LanguageParser.EqualityContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        var op = context.op.Text;
        if (left is NillValue || right is NillValue)
        {
            throw new SemanticError("No se puede realizar operaciones con nill", context.Start);
        }
        return (left, right, op) switch
        {
            (IntValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (DoubleValue l, DoubleValue r, "==") => new BoolValue(l.Value == r.Value),
            (DoubleValue l, DoubleValue r, "!=") => new BoolValue(l.Value != r.Value),
            (IntValue l, DoubleValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, DoubleValue r, "!=") => new BoolValue(l.Value != r.Value),
            (DoubleValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (DoubleValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (StringValue l, StringValue r, "==") => new BoolValue(l.Value == r.Value),
            (StringValue l, StringValue r, "!=") => new BoolValue(l.Value != r.Value),
            (BoolValue l, BoolValue r, "==") => new BoolValue(l.Value == r.Value),
            (BoolValue l, BoolValue r, "!=") => new BoolValue(l.Value != r.Value),
            _ => throw new SemanticError("Operacion invalida para los tipos ingresados (igualdad)", context.Start)
        };
    }

    // VisitorLogical: Soporta operaciones lógicas con booleanos
    public override ValueWrapper VisitLogical(LanguageParser.LogicalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        if (left is NillValue || right is NillValue)
        {
            throw new SemanticError("No se puede realizar operaciones con nill", context.Start);
        }
        return (left, right, context.op.Text) switch
        {
            (BoolValue l, BoolValue r, "&&") => new BoolValue(l.Value && r.Value),
            (BoolValue l, BoolValue r, "||") => new BoolValue(l.Value || r.Value),
            _ => throw new SemanticError("Operacion invalida para los tipos ingresados (logica)", context.Start)
        };
    }

    // VisitorAssign
    public override ValueWrapper VisitAssign(LanguageParser.AssignContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);

        if (variable is ArrayValue arrayValue)
        {
            if (value is ArrayValue arrayValue1)
            {
                if (arrayValue.Tipo != arrayValue1.Tipo)
                {
                    throw new SemanticError("Tipo incorrecto para el slice", context.Start);
                }
                return currentEnvironment.Assign(id, value, context.Start);
            }
            throw new SemanticError("No se puede asignar a un slice", context.Start);
        }
        else if (variable is MatrixValue matrixValue)
        {
            if (value is MatrixValue matrixValue1)
            {
                if (matrixValue.Tipo != matrixValue1.Tipo)
                {
                    throw new SemanticError("Tipo incorrecto para la matriz", context.Start);
                }
                return currentEnvironment.Assign(id, value, context.Start);
            }
            throw new SemanticError("No se puede asignar a una matriz", context.Start);
        }

        string tipovalue = obtenerTipo(value);
        string tipovariable = obtenerTipo(variable);

        if (tipovalue == "int" && tipovariable == "double")
        {
            return currentEnvironment.Assign(id, new DoubleValue((double)((IntValue)value).Value), context.Start);
        }
        else if (tipovalue == "double" && tipovariable == "int")
        {
            return currentEnvironment.Assign(id, new IntValue((int)((DoubleValue)value).Value), context.Start);
        }
        else if (tipovalue != tipovariable)
        {
            throw new SemanticError("Tipo incorrecto para la asignacion", context.Start);
        }

        return currentEnvironment.Assign(id, value, context.Start);
    }

    // ForStmtSimple
    public override ValueWrapper VisitForStmtSimple(LanguageParser.ForStmtSimpleContext context)
    {
        ValueWrapper condition = Visit(context.expr());
        if (condition is not BoolValue)
        {
            throw new SemanticError("La condicion debe ser booleana", context.Start);
        }

        var lastEnvironment = currentEnvironment;

        try
        {
            while (((BoolValue)condition).Value)
            {
                try
                {
                    Visit(context.stmt());
                }
                catch (ContinueException)
                {
                    condition = Visit(context.expr());
                    continue;
                }

                condition = Visit(context.expr());
            }
        }
        catch (BreakException)
        {

        }
        finally
        {
            currentEnvironment = lastEnvironment;
        }

        return defaultValue;
    }

    // ForStmtComplex
    public override ValueWrapper VisitForStmtComplex(LanguageParser.ForStmtComplexContext context)
    {
        Environment previousEnvironment = currentEnvironment;
        currentEnvironment = new Environment(previousEnvironment);

        Visit(context.varDcl());

        VisitForBody(context);

        currentEnvironment = previousEnvironment;
        return defaultValue;

    }

    public void VisitForBody(LanguageParser.ForStmtComplexContext context)
    {
        ValueWrapper condition = Visit(context.expr(0));
        var lastEnvironment = currentEnvironment;
        if (condition is not BoolValue)
        {
            throw new SemanticError("La condicion debe ser booleana", context.Start);
        }
        try
        {
            while (((BoolValue)condition).Value)
            {
                Visit(context.stmt());
                Visit(context.expr(1));
                condition = Visit(context.expr(0));
            }
        }
        catch (BreakException)
        {
            currentEnvironment = lastEnvironment;
        }
        catch (ContinueException)
        {
            currentEnvironment = lastEnvironment;
            Visit(context.expr(1));
            VisitForBody(context);
        }
    }

    public override ValueWrapper VisitForStmtRange(LanguageParser.ForStmtRangeContext context)
    {
        Environment previousEnvironment = currentEnvironment;
        currentEnvironment = new Environment(previousEnvironment);

        // Obtener nombres de las variables de índice y valor
        string indexVar = context.ID(0).GetText();
        string valueVar = context.ID(1).GetText();

        // Evaluar la colección
        ValueWrapper collection = currentEnvironment.Get(context.ID(2).GetText(), context.Start);
        if (collection is not ArrayValue array)
        {
            throw new SemanticError("La expresión después de 'range' debe ser un array", context.Start);
        }

        try
        {
            currentEnvironment.Declare(indexVar, new IntValue(0), context.Start);
            currentEnvironment.Declare(valueVar, new NullValue(), context.Start);
            for (int i = 0; i < array.Value.Length; i++)
            {
                // Declarar o actualizar las variables en el entorno
                currentEnvironment.Assign(indexVar, new IntValue(i), context.Start);
                currentEnvironment.Assign(valueVar, array.Value[i], context.Start);

                // Ejecutar el cuerpo del bucle
                Visit(context.stmt());
            }
        }
        catch (BreakException)
        {
            // Salir del bucle
        }
        catch (ContinueException)
        {
            // Continuar con la siguiente iteración
        }
        finally
        {
            currentEnvironment = previousEnvironment;
        }

        return defaultValue;
    }

    // SwitchStmt

    public override ValueWrapper VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        // Evaluar la expresión del switch (si existe)
        ValueWrapper switchExpr = context.expr() != null ? Visit(context.expr()) : new BoolValue(true);

        bool caseMatched = false;

        foreach (var caseBlock in context.caseBlock())
        {
            ValueWrapper caseValue = Visit(caseBlock.expr());

            // Comparar la expresión del switch con el valor del case
            if (caseValue.Equals(switchExpr) || caseMatched)
            {
                caseMatched = true;
                try
                {
                    foreach (var stmt in caseBlock.stmt())
                    {
                        Visit(stmt);
                    }
                }
                catch (BreakException)
                {
                    return defaultValue; // Salir del switch
                }
            }
        }

        // Si no se encontró coincidencia, ejecutar el bloque default
        if (!caseMatched && context.defaultBlock() != null)
        {
            foreach (var stmt in context.defaultBlock().stmt())
            {
                Visit(stmt);
            }
        }

        return defaultValue;
    }


    // BreakStmt
    public override ValueWrapper VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        throw new BreakException();
    }

    // ContinueStmt
    public override ValueWrapper VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueException();
    }

    // ReturnStmt
    public override ValueWrapper VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        ValueWrapper value = defaultValue;
        if (context.expr() != null)
        {
            value = Visit(context.expr());
        }
        throw new ReturnException(value);
    }

    // CallFunc
    public override ValueWrapper VisitCallFunc(LanguageParser.CallFuncContext context)
    {
        // ValueWrapper callee = Visit(context.embebidaex());
        ValueWrapper callee = currentEnvironment.Get(context.embebidaex().GetText(), context.Start);
        var call = context.call();
        if (callee is FunctionValue functionValue)
        {
            callee = VisitCall(functionValue.invocable, call.args());
        }
        else
        {
            throw new SemanticError("El valor no es una función", context.Start);
        }
        return callee;
    }


    // FuncDcl
    public ValueWrapper VisitCall(Invocable invocable, LanguageParser.ArgsContext args)
    {
        List<ValueWrapper> arguments = new List<ValueWrapper>();
        if (args != null)
        {
            foreach (var arg in args.expr())
            {
                arguments.Add(Visit(arg));
            }
        }

        // if (args != null && arguments.Count != invocable.Arity())
        // {
        //     throw new SemanticError("Numero incorrecto de argumentos", args.Start);
        // }

        return invocable.Invoke(arguments, this);
    }

    // InitSlice
    public override ValueWrapper VisitInitSlice(LanguageParser.InitSliceContext context)
    {
        string id = context.ID().GetText();
        string tipo = context.tipo().GetText();
        var values = context.args().expr().Select(e => Visit(e)).ToArray();
        if (!values.All(v => tipoCorrecto(v, tipo)))
        {
            throw new SemanticError("Tipo incorrecto para el arreglo", context.Start);
        }
        ValueWrapper arrayValue = new ArrayValue(values, tipo);
        currentEnvironment.Declare(id, arrayValue, context.Start);
        return defaultValue;
    }

    public bool tipoCorrecto(ValueWrapper value, string tipo)
    {
        return value switch
        {
            IntValue i when tipo == "int" => true,
            DoubleValue d when tipo == "double" => true,
            StringValue s when tipo == "string" => true,
            BoolValue b when tipo == "bool" => true,
            ArrayValue a when tipo == "array" => true,
            _ => false
        };
    }

    // DeclareSlice
    public override ValueWrapper VisitDeclareSlice(LanguageParser.DeclareSliceContext context)
    {
        string id = context.ID().GetText();
        string tipo = context.tipo().GetText();
        ValueWrapper[] value = Array.Empty<ValueWrapper>();
        ValueWrapper arrayValue = new ArrayValue(value, tipo);
        currentEnvironment.Declare(id, arrayValue, context.Start);
        return defaultValue;
    }

    // SliceIndex
    public override ValueWrapper VisitSliceIndex(LanguageParser.SliceIndexContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper index = Visit(context.expr());
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is ArrayValue arrayValue)
        {
            for (int i = 0; i < arrayValue.Value.Length; i++)
            {
                if (ValoresIguales(arrayValue.Value[i], index))
                {
                    return new IntValue(i);
                }
            }
            return new IntValue(-1);
        }
        throw new SemanticError("No se puede indexar un valor que no es un arreglo", context.Start);
    }

    public bool ValoresIguales(ValueWrapper a, ValueWrapper b)
    {
        return (a, b) switch
        {
            (IntValue i1, IntValue i2) => i1.Value == i2.Value,
            (DoubleValue d1, DoubleValue d2) => d1.Value == d2.Value,
            (StringValue s1, StringValue s2) => s1.Value == s2.Value,
            (BoolValue b1, BoolValue b2) => b1.Value == b2.Value,
            _ => false
        };
    }

    // VisitSliceJoin
    public override ValueWrapper VisitSliceJoin(LanguageParser.SliceJoinContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper arreglo = currentEnvironment.Get(id, context.Start);
        ValueWrapper separator = Visit(context.expr());
        if (arreglo is ArrayValue arrayValue)
        {
            if (separator is StringValue separatorValue)
            {
                return new StringValue(string.Join(separatorValue.Value, arrayValue.Value.Select(v => FormatValue(v))));
            }
            throw new SemanticError("El separador debe ser un string", context.Start);
        }
        throw new SemanticError("El valor no es un arreglo", context.Start);
    }

    public static string FormatValue(ValueWrapper value)
    {
        return value switch
        {
            IntValue i => i.Value.ToString(),
            DoubleValue d => d.Value.ToString(),
            StringValue s => s.Value,
            BoolValue b => b.Value.ToString(),
            _ => throw new SemanticError("Tipo invalido para mostrar", null)
        };
    }

    // SliceLen
    public override ValueWrapper VisitSliceLen(LanguageParser.SliceLenContext context)
    {
        ValueWrapper value = Visit(context.expr());

        if (value is ArrayValue arrayValue)
        {
            return new IntValue(arrayValue.Value.Length); // Retorna la cantidad de elementos en un slice
        }
        else if (value is MatrixValue matrixValue)
        {
            return new IntValue(matrixValue.Value.Length); // Retorna el número de filas en la matriz
        }
        else if (value is AccessArrayValue accessArrayValue)
        {
            // Para manejar casos como matriz[0]
            if (accessArrayValue.Value is ArrayValue subArray)
            {
                return new IntValue(subArray.Value.Length); // Retorna la cantidad de elementos en la fila seleccionada
            }
            throw new SemanticError("El índice seleccionado no es un array válido", context.Start);
        }

        throw new SemanticError("El valor no es un arreglo o matriz", context.Start);
    }

    // SliceAppend
    public override ValueWrapper VisitSliceAppend(LanguageParser.SliceAppendContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is ArrayValue arrayValue)
        {
            if (!tipoCorrecto(value, arrayValue.Tipo))
            {
                throw new SemanticError("Tipo incorrecto para el arreglo", context.Start);
            }
            var newValue = arrayValue.Value.Append(value).ToArray();
            ValueWrapper updateValue = new ArrayValue(newValue, arrayValue.Tipo);
            return currentEnvironment.Assign(id, updateValue, context.Start);
        }
        else if (variable is MatrixValue matrixValue)
        {
            if (value is ArrayValue arrayValue1)
            {
                if (arrayValue1.Tipo != matrixValue.Tipo)
                {
                    throw new SemanticError("Tipo incorrecto para la matriz", context.Start);
                }
                var newValue = matrixValue.Value.Append(arrayValue1.Value).ToArray();
                ValueWrapper updateValue = new MatrixValue(newValue, matrixValue.Tipo);
                return currentEnvironment.Assign(id, updateValue, context.Start);
            }
            throw new SemanticError("No se puede asignar a una matriz", context.Start);
        }
        throw new SemanticError("El valor no es un arreglo", context.Start);
    }

    // SliceAccess
    public override ValueWrapper VisitSliceAccess(LanguageParser.SliceAccessContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper index = Visit(context.expr());
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is ArrayValue arrayValue)
        {
            if (index is IntValue i)
            {
                var tipo = arrayValue.Tipo;
                if (i.Value >= 0 && i.Value < arrayValue.Value.Length)
                {
                    return arrayValue.Value[i.Value];
                }
                throw new SemanticError("Indice fuera de rango", context.Start);
            }
            throw new SemanticError("El indice debe ser un entero", context.Start);
        }
        else if (variable is MatrixValue matrixValue)
        {
            if (index is IntValue i)
            {
                if (i.Value >= 0 && i.Value < matrixValue.Value.Length)
                {
                    return new ArrayValue(matrixValue.Value[i.Value], matrixValue.Tipo);
                }
                throw new SemanticError("Indice fuera de rango", context.Start);
            }
            throw new SemanticError("El indice debe ser un entero", context.Start);
        }
        throw new SemanticError("El valor no es un arreglo", context.Start);
    }

    // MatrixAccess
    public override ValueWrapper VisitMatrixAccess(LanguageParser.MatrixAccessContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper rowIndex = Visit(context.expr(0)); // Primer índice
        ValueWrapper colIndex = Visit(context.expr(1)); // Segundo índice
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);

        if (variable is MatrixValue matrixValue)
        {
            if (rowIndex is IntValue row && colIndex is IntValue col)
            {
                if (row.Value >= 0 && row.Value < matrixValue.Value.Length &&
                    col.Value >= 0 && col.Value < matrixValue.Value[row.Value].Length)
                {
                    return matrixValue.Value[row.Value][col.Value]; // Retorna el valor en [fila][columna]
                }
                throw new SemanticError("Índice fuera de rango", context.Start);
            }
            throw new SemanticError("Los índices deben ser enteros", context.Start);
        }
        throw new SemanticError("El valor no es una matriz", context.Start);
    }

    // InitMatrix
    public override ValueWrapper VisitInitMatrix(LanguageParser.InitMatrixContext context)
    {
        string id = context.ID().GetText();
        string tipo = context.tipo().GetText();

        var rows = context.matrixargs().args();
        var countrows = rows.Length;

        if (countrows == 0)
        {
            throw new SemanticError("La matriz debe tener al menos una fila", context.Start);
        }

        ValueWrapper[][] matrixValues = new ValueWrapper[countrows][];

        for (int i = 0; i < countrows; i++)
        {
            var rowsvalues = rows[i].expr().Select(e => Visit(e)).ToArray();
            if (!rowsvalues.All(v => tipoCorrecto(v, tipo)))
            {
                throw new SemanticError("Tipo incorrecto para la matriz", context.Start);
            }
            matrixValues[i] = rowsvalues;
        }

        MatrixValue matrix = new MatrixValue(matrixValues, tipo);
        currentEnvironment.Declare(id, matrix, context.Start);
        return defaultValue;
    }

    // ItemAssign
    public override ValueWrapper VisitItemAssign(LanguageParser.ItemAssignContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper index = Visit(context.expr(0));
        ValueWrapper value = Visit(context.expr(1));
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is ArrayValue arrayValue)  // Caso: a[0] = 3
        {
            if (index is IntValue i)
            {
                if (i.Value >= 0 && i.Value < arrayValue.Value.Length)
                {
                    arrayValue.Value[i.Value] = value;
                    ValueWrapper[] updateValue = arrayValue.Value;
                    ValueWrapper newValue = new ArrayValue(updateValue, arrayValue.Tipo);
                    currentEnvironment.Assign(id, newValue, context.Start);
                    return defaultValue;
                }
                throw new SemanticError("Índice fuera de rango", context.Start);
            }
            throw new SemanticError("El índice debe ser un entero", context.Start);
        }

        throw new SemanticError("El valor no es un arreglo ni una matriz", context.Start);
    }

    // ItemMatrixAssign
    public override ValueWrapper VisitItemMatrixAssign(LanguageParser.ItemMatrixAssignContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper index = Visit(context.expr(0));
        ValueWrapper index2 = Visit(context.expr(1));
        ValueWrapper value = Visit(context.expr(2));
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is MatrixValue matrixValue)
        {
            if (index is IntValue i && index2 is IntValue j)
            {
                if (i.Value >= 0 && i.Value < matrixValue.Value.Length && j.Value >= 0 && j.Value < matrixValue.Value[i.Value].Length)
                {
                    matrixValue.Value[i.Value][j.Value] = value;
                    ValueWrapper[][] updateValue = matrixValue.Value;
                    ValueWrapper newValue = new MatrixValue(updateValue, matrixValue.Tipo);
                    currentEnvironment.Assign(id, newValue, context.Start);
                    return defaultValue;
                }
                throw new SemanticError("Índice fuera de rango", context.Start);
            }
            throw new SemanticError("Los índices deben ser enteros", context.Start);
        }
        throw new SemanticError("El valor no es una matriz", context.Start);
    }

    // StructDclInit
    // public override ValueWrapper VisitStructDclInit(LanguageParser.StructDclInitContext context)
    // {
    //     string structname = context.ID().GetText();
    //     var atributesNames = context.atributos().ID().Select(i => i.GetText()).ToList();
    //     var atributesTypes = context.atributos().tipo().Select(t => t.GetText()).ToList();

    //     var atributes = new Dictionary<string, AtributeValue>();
    //     for (int i = 0; i < atributesNames.Count; i++)
    //     {
    //         string attrName = atributesNames[i];
    //         string attrType = atributesTypes[i];
    //         ValueWrapper defaultValue;
    //         if (currentEnvironment.ExistVariable(attrType, context.Start))
    //         {
    //             ValueWrapper structDef = currentEnvironment.Get(attrType, context.Start);
    //             if (structDef is StructValue structType)
    //             {
    //                 defaultValue = new StructValue(attrType, new Dictionary<string, AtributeValue>(structType.Attributes));
    //             }
    //             else
    //             {
    //                 throw new SemanticError("El tipo no es una estructura", context.Start);
    //             }
    //         }
    //         else
    //         {
    //             defaultValue = new VoidValue();
    //         }

    //         atributes[attrName] = new AtributeValue(attrName, attrType, defaultValue);
    //     }

    //     var structValue = new StructValue(structname, atributes);
    //     currentEnvironment.Declare(structname, structValue, context.Start);
    //     return defaultValue;
    // }

    public override ValueWrapper VisitStructDclInit(LanguageParser.StructDclInitContext context)
    {
        string structname = context.ID().GetText();
        var atributesNames = context.atributos().ID().Select(i => i.GetText()).ToList();
        var atributesTypes = context.atributos().tipo().Select(t => t.GetText()).ToList();

        var atributes = new Dictionary<string, AtributeValue>();
        var methods = new Dictionary<string, FunctionValue>();

        for (int i = 0; i < atributesNames.Count; i++)
        {
            string attrName = atributesNames[i];
            string attrType = atributesTypes[i];
            ValueWrapper defaultValue;

            if (currentEnvironment.ExistVariable(attrType, context.Start))
            {
                ValueWrapper structDef = currentEnvironment.Get(attrType, context.Start);
                if (structDef is StructValue structType)
                {
                    defaultValue = new StructValue(
                        attrType,
                        new Dictionary<string, AtributeValue>(structType.Attributes),
                        new Dictionary<string, FunctionValue>(structType.Methods)
                    );
                }
                else
                {
                    throw new SemanticError("El tipo no es una estructura", context.Start);
                }
            }
            else
            {
                defaultValue = new VoidValue();
            }

            atributes[attrName] = new AtributeValue(attrName, attrType, defaultValue);
        }

        var structValue = new StructValue(structname, atributes, methods);
        currentEnvironment.Declare(structname, structValue, context.Start);
        return defaultValue;
    }


    // InstanceStruct
    // public override ValueWrapper VisitInstanceStruct(LanguageParser.InstanceStructContext context)
    // {
    //     string structname = context.ID(0).GetText();
    //     string instancename = context.ID(1).GetText();
    //     ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

    //     if (variable is not StructValue structTemp)
    //     {
    //         throw new SemanticError("El valor no es una estructura", context.Start);
    //     }

    //     var atributes = new Dictionary<string, AtributeValue>(structTemp.Attributes);

    //     var atrNames = context.argsA().ID();
    //     var atrValues = context.argsA().expr();

    //     for (int i = 0; i < atrNames.Length; i++)
    //     {
    //         string atrName = atrNames[i].GetText();
    //         ValueWrapper value = Visit(atrValues[i]);
    //         if (!atributes.ContainsKey(atrName))
    //         {
    //             throw new SemanticError("El atributo no existe en la estructura", context.Start);
    //         }
    //         var atrType = atributes[atrName].Tipo;
    //         if (currentEnvironment.ExistVariable(atrType, context.Start))
    //         {
    //             ValueWrapper structDef = currentEnvironment.Get(atrType, context.Start);
    //             if (structDef is StructValue structType)
    //             {
    //                 if (value is not StructValue structInstance || structInstance.Id != atrType)
    //                 {
    //                     throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
    //                 }
    //                 atributes[atrName] = atributes[atrName] with { Value = new StructValue(atrType, new Dictionary<string, AtributeValue>(structType.Attributes)) };
    //             }
    //         }
    //         else
    //         {
    //             if (!IsTypeCompatible(atrType, value))
    //             {
    //                 throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
    //             }
    //             atributes[atrName] = atributes[atrName] with { Value = value };
    //         }
    //     }

    //     StructValue newInstance = new StructValue(structname, atributes);
    //     currentEnvironment.Declare(instancename, newInstance, context.Start);
    //     return defaultValue;
    // }

    public override ValueWrapper VisitInstanceStruct(LanguageParser.InstanceStructContext context)
    {
        string structname = context.ID(0).GetText();
        string instancename = context.ID(1).GetText();
        ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

        if (variable is not StructValue structTemp)
        {
            throw new SemanticError("El valor no es una estructura", context.Start);
        }

        var atributes = new Dictionary<string, AtributeValue>(structTemp.Attributes);
        var methods = new Dictionary<string, FunctionValue>(structTemp.Methods);

        var atrNames = context.argsA().ID();
        var atrValues = context.argsA().expr();

        for (int i = 0; i < atrNames.Length; i++)
        {
            string atrName = atrNames[i].GetText();
            ValueWrapper value = Visit(atrValues[i]);

            if (!atributes.ContainsKey(atrName))
            {
                throw new SemanticError("El atributo no existe en la estructura", context.Start);
            }

            var atrType = atributes[atrName].Tipo;

            if (currentEnvironment.ExistVariable(atrType, context.Start))
            {
                ValueWrapper structDef = currentEnvironment.Get(atrType, context.Start);
                if (structDef is StructValue structType)
                {                                      
                    if (value is not StructValue structInstance || structInstance.Id != atrType)
                    {
                        throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
                    }
                    atributes[atrName] = atributes[atrName] with
                    {
                        Value = new StructValue(atrType, new Dictionary<string, AtributeValue>(structType.Attributes),
                                                         new Dictionary<string, FunctionValue>(structType.Methods)) // ✅ Copiar métodos internos
                    };
                }
            }
            else
            {
                Console.WriteLine("Atributo: " + atrName);
                Console.WriteLine("Tipo: " + atrType);
                Console.WriteLine("Valor: " + value);
                if (!IsTypeCompatible(atrType, value))
                {                    
                    throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
                }
                atributes[atrName] = atributes[atrName] with { Value = value };
            }
        }


        StructValue newInstance = new StructValue(structname, atributes, methods);
        currentEnvironment.Declare(instancename, newInstance, context.Start);
        return newInstance;
    }


    public bool IsTypeCompatible(string expectedType, ValueWrapper value)
    {
        return expectedType switch
        {
            "int" => value is IntValue,
            "double" => value is DoubleValue,
            "float64" => value is DoubleValue,
            "string" => value is StringValue,
            "bool" => value is BoolValue,
            "array" => value is ArrayValue,
            "matrix" => value is MatrixValue,
            "struct" => value is StructValue,
            "rune" => value is RuneValue,
            "void" => value is VoidValue,
            "nill" => value is NillValue,
            _ => throw new SemanticError($"Tipo desconocido '{expectedType}'", null)
        };
    }

    public string obtenerTipo(ValueWrapper value)
    {
        return value switch
        {
            IntValue i => "int",
            DoubleValue d => "float64",
            StringValue s => "string",
            BoolValue b => "bool",
            RuneValue r => "rune",
            ArrayValue a => "array",
            MatrixValue m => "matrix",
            StructValue ss => "struct",
            _ => throw new SemanticError("Tipo invalido", null)
        };
    }

    // Increment
    public override ValueWrapper VisitIncrement(LanguageParser.IncrementContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is IntValue i)
        {
            return currentEnvironment.Assign(id, new IntValue(i.Value + 1), context.Start);
        }
        else if (variable is DoubleValue d)
        {
            return currentEnvironment.Assign(id, new DoubleValue(d.Value + 1), context.Start);
        }
        throw new SemanticError("El valor no es un número", context.Start);
    }

    // Decrement
    public override ValueWrapper VisitDecrement(LanguageParser.DecrementContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper variable = currentEnvironment.Get(id, context.Start);
        if (variable is IntValue i)
        {
            return currentEnvironment.Assign(id, new IntValue(i.Value - 1), context.Start);
        }
        else if (variable is DoubleValue d)
        {
            return currentEnvironment.Assign(id, new DoubleValue(d.Value - 1), context.Start);
        }
        throw new SemanticError("El valor no es un número", context.Start);
    }

    // FunctionDclInit
    public override ValueWrapper VisitFunctionDclInit(LanguageParser.FunctionDclInitContext context)
    {

        var foreign = new ForeignFunction(currentEnvironment, context);
        currentEnvironment.Declare(context.ID().GetText(), new FunctionValue(foreign, context.ID().GetText()), context.Start);

        return defaultValue;

    }

    // StructAccess
    // public override ValueWrapper VisitStructAccess(LanguageParser.StructAccessContext context)
    // {
    //     string structname = context.ID(0).GetText();
    //     string atrname = context.ID(1).GetText();
    //     ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

    //     if (variable is not StructValue structTemp)
    //     {
    //         throw new SemanticError("El valor no es una estructura", context.Start);
    //     }

    //     if (!structTemp.Attributes.ContainsKey(atrname))
    //     {
    //         throw new SemanticError("El atributo no existe en la estructura", context.Start);
    //     }

    //     return structTemp.Attributes[atrname].Value;
    // }

    public override ValueWrapper VisitStructAccess(LanguageParser.StructAccessContext context)
    {
        string structName = context.ID(0).GetText();
        ValueWrapper current = currentEnvironment.Get(structName, context.Start);

        if (current is not StructValue structInstance)
        {
            throw new SemanticError($"'{structName}' no es una estructura.", context.Start);
        }

        // Recorrer los accesos encadenados
        for (int i = 1; i < context.ID().Length; i++)
        {
            string memberName = context.ID(i).GetText();

            if (structInstance.Attributes.TryGetValue(memberName, out var attribute))
            {
                current = attribute.Value;
            }
            else if (structInstance.Methods.TryGetValue(memberName, out var method))
            {
                current = method;
            }
            else
            {
                throw new SemanticError($"El atributo o método '{memberName}' no existe en la estructura '{structName}'", context.Start);
            }

            // Verificar si seguimos en una estructura antes de continuar el acceso encadenado
            if (i < context.ID().Length - 1)
            {
                if (current is not StructValue nextStruct)
                {
                    throw new SemanticError($"'{memberName}' no es una estructura, no se puede acceder a más atributos.", context.Start);
                }
                structInstance = nextStruct;
            }
        }

        return current;
    }


    // public override ValueWrapper VisitStructAccess(LanguageParser.StructAccessContext context)
    // {
    //     string structname = context.ID(0).GetText();
    //     string memberName = context.ID(1).GetText();
    //     ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

    //     if (variable is not StructValue structTemp)
    //     {
    //         throw new SemanticError("El valor no es una estructura", context.Start);
    //     }


    //     if (structTemp.Attributes.ContainsKey(memberName))
    //     {
    //         return structTemp.Attributes[memberName].Value;
    //     }


    //     if (structTemp.Methods.ContainsKey(memberName))
    //     {
    //         return structTemp.Methods[memberName];
    //     }

    //     throw new SemanticError($"El atributo o método '{memberName}' no existe en la estructura '{structname}'", context.Start);
    // }


    // StructItemAssign
    // public override ValueWrapper VisitStructItemAssign(LanguageParser.StructItemAssignContext context)
    // {
    //     string structname = context.ID(0).GetText();
    //     string atrname = context.ID(1).GetText();
    //     ValueWrapper value = Visit(context.expr());
    //     ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

    //     if (variable is not StructValue structTemp)
    //     {
    //         throw new SemanticError("El valor no es una estructura", context.Start);
    //     }

    //     if (!structTemp.Attributes.ContainsKey(atrname))
    //     {
    //         throw new SemanticError("El atributo no existe en la estructura", context.Start);
    //     }

    //     var atrType = structTemp.Attributes[atrname].Tipo;
    //     if (!IsTypeCompatible(atrType, value))
    //     {
    //         throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
    //     }

    //     structTemp.Attributes[atrname] = structTemp.Attributes[atrname] with { Value = value };
    //     currentEnvironment.Assign(structname, structTemp, context.Start);
    //     return defaultValue;
    // }

    public override ValueWrapper VisitStructItemAssign(LanguageParser.StructItemAssignContext context)
    {
        string structname = context.ID(0).GetText();
        string memberName = context.ID(1).GetText();
        ValueWrapper value = Visit(context.expr());
        ValueWrapper variable = currentEnvironment.Get(structname, context.Start);

        if (variable is not StructValue structTemp)
        {
            throw new SemanticError("El valor no es una estructura", context.Start);
        }

        if (structTemp.Methods.ContainsKey(memberName))
        {
            throw new SemanticError($"No se puede asignar un valor al método '{memberName}' en la estructura '{structname}'", context.Start);
        }

        if (!structTemp.Attributes.ContainsKey(memberName))
        {
            throw new SemanticError("El atributo no existe en la estructura", context.Start);
        }

        var atrType = structTemp.Attributes[memberName].Tipo;
        if (!IsTypeCompatible(atrType, value))
        {
            throw new SemanticError("Tipo incorrecto para el atributo", context.Start);
        }

        structTemp.Attributes[memberName] = structTemp.Attributes[memberName] with { Value = value };
        currentEnvironment.Assign(structname, structTemp, context.Start);

        return defaultValue;
    }


    // SliceAssign
    public override ValueWrapper VisitSliceAssign(LanguageParser.SliceAssignContext context)
    {
        // 1. Obtener el identificador
        string varName = context.ID().GetText();

        // 2. Buscar la variable en el entorno
        ValueWrapper existingVar = currentEnvironment.Get(varName, context.Start);

        // 3. Verificar que la variable existe y es un ArrayValue
        if (existingVar is not ArrayValue existingArray)
        {
            throw new SemanticError($"La variable '{varName}' no es un array o no ha sido declarada.", context.Start);
        }

        // 4. Obtener los valores a asignar
        var newValues = context.args().expr().Select(expr => Visit(expr)).ToList();

        // 5. Validar que los tipos de los nuevos valores sean compatibles con el tipo del array
        string arrayType = existingArray.Tipo;
        foreach (var value in newValues)
        {
            if (!IsTypeCompatible(arrayType, value))
            {
                throw new SemanticError($"Tipo incompatible en la asignación de la lista '{varName}'. Se esperaba '{arrayType}'.", context.Start);
            }
        }

        // 6. Crear un nuevo ArrayValue con los valores actualizados
        ArrayValue updatedArray = new ArrayValue(newValues.ToArray(), arrayType);


        // 7. Asignar el nuevo ArrayValue a la variable en el entorno
        currentEnvironment.Assign(varName, updatedArray, context.Start);

        return defaultValue;
    }

    public override ValueWrapper VisitFunctionStructDclInit(LanguageParser.FunctionStructDclInitContext context)
    {
        // Obtener nombres del struct y método
        string structReference = context.ID(0).GetText();
        string structName = context.ID(1).GetText();
        string functionName = context.ID(2).GetText();

        // Buscar el struct en el entorno
        if (!currentEnvironment.ExistVariable(structName, context.Start))
        {
            throw new SemanticError($"El struct '{structName}' no está definido.", context.Start);
        }

        ValueWrapper structValue = currentEnvironment.Get(structName, context.Start);
        if (structValue is not StructValue structDef)
        {
            throw new SemanticError($"'{structName}' no es una estructura válida.", context.Start);
        }

        // Crear la función del método
        var methodFunction = new StructMethodFunction(structReference, currentEnvironment, context);
        var functionValue = new FunctionValue(methodFunction, functionName);

        // Agregar el método al struct
        var updatedMethods = new Dictionary<string, FunctionValue>(structDef.Methods) { [functionName] = functionValue };
        var updatedStruct = structDef with { Methods = updatedMethods };

        // Guardar el struct modificado en el entorno
        currentEnvironment.Assign(structName, updatedStruct, context.Start);

        return new VoidValue();
    }

    // StructMethodCall
    // public override ValueWrapper VisitStructMethodCall(LanguageParser.StructMethodCallContext context)
    // {
    //     // Obtener el nombre del struct y el método
    //     string structName = context.ID(0).GetText();
    //     string methodName = context.ID(1).GetText();

    //     // Buscar el struct en el entorno
    //     if (!currentEnvironment.ExistVariable(structName, context.Start))
    //     {
    //         throw new SemanticError($"El struct '{structName}' no está definido.", context.Start);
    //     }

    //     ValueWrapper structValue = currentEnvironment.Get(structName, context.Start);
    //     if (structValue is not StructValue structDef)
    //     {
    //         throw new SemanticError($"'{structName}' no es una estructura válida.", context.Start);
    //     }

    //     // Buscar el método en el struct
    //     if (!structDef.Methods.ContainsKey(methodName))
    //     {
    //         throw new SemanticError($"El método '{methodName}' no está definido en el struct '{structName}'.", context.Start);
    //     }

    //     // Obtener la función del método
    //     FunctionValue methodFunction = structDef.Methods[methodName];

    //     // Ejecutar la función del método
    //     return methodFunction.invocable.Invoke(new List<ValueWrapper>(), this);

    // }


    public override ValueWrapper VisitStructMethodCall(LanguageParser.StructMethodCallContext context)
    {
        // Obtener la instancia del struct (ejemplo: persona)
        string structName = context.ID(0).GetText();
        ValueWrapper instance = currentEnvironment.Get(structName, context.Start);

        if (instance is not StructValue structInstance)
        {
            throw new SemanticError("La instancia no es un struct.", context.Start);
        }

        // Obtener el nombre del método
        string methodName = context.ID(1).GetText();

        // Verificar si el struct tiene ese método
        if (!structInstance.Methods.TryGetValue(methodName, out var methodValue) || methodValue is null)
        {
            throw new SemanticError($"El método '{methodName}' no está definido en el struct '{structInstance.Id}'.", context.Start);
        }

        // Crear la lista de argumentos y agregar la instancia del struct como primer parámetro
        List<ValueWrapper> arguments = new List<ValueWrapper> { structInstance };

        // Agregar los argumentos reales de la llamada
        if (context.call().args() != null)
        {
            foreach (var arg in context.call().args().expr())
            {
                arguments.Add(Visit(arg));
            }
        }

        // Ahora invocamos el método pasando todos los argumentos correctos
        return methodValue.invocable.Invoke(arguments, this);
    }


}
