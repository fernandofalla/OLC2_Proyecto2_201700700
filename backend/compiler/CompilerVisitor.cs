using System.Numerics;
using System.Text.RegularExpressions;
using analyzer;

public class CompilerVisitor : LanguageBaseVisitor<Object?>  // Cambiar int -> Object?
{

    public ArmGenerator c = new ArmGenerator();

    private String? continueLabel = null;
    private String? breakLabel = null;
    private String? returnLabel = null;

    public CompilerVisitor()
    {

    }

    // VisitProgram
    public override Object? VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return null;
    }

    public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        c.Comment("Print statement");
        c.Comment("Visiting expression");
        Visit(context.expr());

        c.Comment("Popping expression");
        var isDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var value = c.PopObject(isDouble ? Register.D0 : Register.X0); // x0 = 1 + 2

        if (value.Type == StackObject.StackObjectType.Int)
        {
            c.PrintInteger(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Float)
        {
            c.PrintFloat();
        }
        else if (value.Type == StackObject.StackObjectType.String)
        {
            c.PrintString(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Bool)
        {
            c.PrintBool(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Char)
        {
            c.PrintChar(Register.X0);
        }
        else
        {
            c.Comment("Unknown type");
        }

        return null;
    }

    public override Object? VisitExplicitVarDcl(LanguageParser.ExplicitVarDclContext context)
    {
        var id = context.ID().GetText();
        c.Comment("Variable: " + id);

        Visit(context.expr());
        c.TagObject(id);

        return null;
    }

    public override Object? VisitImplicitVarDcl(LanguageParser.ImplicitVarDclContext context)
    {
        var id = context.ID().GetText();
        c.Comment("Variable: " + id);

        Visit(context.expr());
        c.TagObject(id);

        return null;
    }

    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        Visit(context.expr());
        c.Comment("Popping expression");
        c.PopObject(Register.X0); // x0 = 1 + 2

        return null;
    }

    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        c.Comment("Visiting block");
        c.NewScope();

        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }

        int bytesToRemove = c.endScope();

        if (bytesToRemove > 0)
        {
            c.Comment("Removing " + bytesToRemove + " bytes from stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0);
            c.Comment("New stack pointer: ");
        }

        return null;
    }

    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        c.Comment("If statement");
        Visit(context.expr());
        c.PopObject(Register.X0); // x0 = 1 + 2

        var hasElse = context.stmt().Length > 1;
        if(hasElse)
        {
            var elseLabel = c.GetLabel();
            var endLabel = c.GetLabel();

            c.Cbz(Register.X0, elseLabel); // If x0 == 0, go to else

            c.Comment("Visiting if block");
            Visit(context.stmt(0));
            c.B(endLabel); // Go to end
            c.SetLabel(elseLabel); // Else label
            c.Comment("Visiting else block");
            Visit(context.stmt(1));
            c.SetLabel(endLabel); // End label
        }
        else
        {
            var endLabel = c.GetLabel();
            c.Cbz(Register.X0, endLabel); // If x0 == 0, go to end

            c.Comment("Visiting if block");
            Visit(context.stmt(0));
            c.SetLabel(endLabel); // End label
        }
        return null;
    }

    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        var id = context.ID().GetText();
        c.Comment("Variable: " + id);

        var (offset, obj) = c.GetObject(id);
        c.Comment("Offset: " + offset);

        c.Mov(Register.X0, offset);
        c.Add(Register.X0, Register.SP, Register.X0);
        c.Ldr(Register.X0, Register.X0); // Load value from variable
        c.Push(Register.X0); // Push value to stack

        var newObject = c.CloneObject(obj);
        newObject.Id = null;
        c.PushObject(newObject); // Push object to stack

        return null;
    }

    public override Object? VisitParens(LanguageParser.ParensContext context)
    {
        return null;
    }

    public override Object? VisitNegate(LanguageParser.NegateContext context)
    {
        return null;
    }

    public override Object? VisitNot(LanguageParser.NotContext context)
    {
        return null;
    }

    public override Object? VisitNilll(LanguageParser.NilllContext context)
    {
        return null;
    }

    public override Object? VisitNumber(LanguageParser.NumberContext context)
    {
        var value = context.INT().GetText();
        c.Comment("Constant: " + value);

        var intObject = c.IntObject();
        c.PushConstant(intObject, int.Parse(value));

        return null;
    }

    public override Object? VisitDecimal(LanguageParser.DecimalContext context)
    {
        var value = context.DOUBLE().GetText();
        c.Comment("Constant: " + value);

        var floatObject = c.FloatObject();
        c.PushConstant(floatObject, double.Parse(value));
        c.Comment("Pushing float constant: " + value);

        return null;
    }

    public override Object? VisitCadena(LanguageParser.CadenaContext context)
    {
        var value = context.STRING().GetText().Trim('"');
        c.Comment("Constant: " + value);

        var stringObject = c.StringObject();
        c.PushConstant(stringObject, value);

        return null;
    }

    public override Object? VisitBooleano(LanguageParser.BooleanoContext context)
    {
        var value = context.BOOL().GetText() == "true" ? true : false;
        c.Comment("Constant: " + value);

        var boolObject = c.BoolObject();
        c.PushConstant(boolObject, value);
        return null;
    }

    public override Object? VisitCaracter(LanguageParser.CaracterContext context)
    {
        return null;
    }

    public override Object? VisitMulDivMod(LanguageParser.MulDivModContext context)
    {
        return null;
    }

    public override Object? VisitAddSub(LanguageParser.AddSubContext context)
    {
        c.Comment("AddSub");
        var operation = context.op.Text;

        // 1 + 2
        c.Comment("Visiting left");
        Visit(context.expr(0));
        c.Comment("Visiting right");
        Visit(context.expr(1));


        c.Comment("Popping operands");
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X0); // x1 = 2
        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X1); // x0 = 1 

        if (isLeftDouble || isRightDouble)
        {
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X1); // Convert left to float
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X0); // Convert right to float

            if (operation == "+")
            {
                c.Fadd(Register.D0, Register.D0, Register.D1);
            }
            else if (operation == "-")
            {
                c.Fsub(Register.D0, Register.D1, Register.D0);
            }
            c.Comment("Pushing result");
            c.Push(Register.D0); // x0 = 1 + 2
            c.PushObject(c.CloneObject(isLeftDouble ? left : right));

            return null;
        }

        if (operation == "+")
        {
            c.Add(Register.X0, Register.X0, Register.X1);
        }
        else if (operation == "-")
        {
            c.Sub(Register.X0, Register.X1, Register.X0);
        }

        c.Comment("Pushing result");
        c.Push(Register.X0); // x0 = 1 + 2
        c.PushObject(c.CloneObject(left));

        return null;
    }

    public override Object? VisitRelational(LanguageParser.RelationalContext context)
    {
        c.Comment("Relational");
        var operation = context.op.Text;

        c.Comment("Visiting left");
        Visit(context.expr(0));

        c.Comment("Visiting right");
        Visit(context.expr(1));

        c.Comment("Popping operands");
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X0); // x1 = 2

        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X1); // x0 = 1

        if (isLeftDouble || isRightDouble)
        {
            // if (!isLeftDouble) c.Scvtf(Register.D1, Register.X1); // Convert left to float
            // if (!isRightDouble) c.Scvtf(Register.D0, Register.X0); // Convert right to float

            // c.Fcmp(Register.D1, Register.D0);

            // c.Comment("Pushing result");
            // switch (operation)
            // {
            //     case "<":
            //         c.Cset(Register.X0, "LT");
            //         break;
            //     case "<=":
            //         c.Cset(Register.X0, "LE");
            //         break;
            //     case ">":
            //         c.Cset(Register.X0, "GT");
            //         break;
            //     case ">=":
            //         c.Cset(Register.X0, "GE");
            //         break;
            // }
            // c.Comment("Pushing result");
            // c.Push(Register.D0); // x0 = 1 + 2
            // c.PushObject(c.CloneObject(isLeftDouble ? left : right));
            // TODO:
            return null;
        }

        c.Cmp(Register.X1, Register.X0);
        var truelabel = c.GetLabel();
        var endlabel = c.GetLabel();

        switch(operation)
        {
            case "<":
                c.Blt(truelabel);
                break;
            case "<=":
                c.Ble(truelabel);
                break;
            case ">":
                c.Bgt(truelabel);
                break;
            case ">=":
                c.Bge(truelabel);
                break;
        }

        c.Mov(Register.X0, 0);
        c.Push(Register.X0); // x0 = 1 + 2
        c.B(endlabel);
        c.SetLabel(truelabel);
        c.Mov(Register.X0, 1);
        c.Push(Register.X0); // x0 = 1 + 2
        c.SetLabel(endlabel);

        c.PushObject(c.BoolObject());

        return null;
    }

    public override Object? VisitEquality(LanguageParser.EqualityContext context)
    {
        c.Comment("Equality");
        var operation = context.op.Text;
        c.Comment("Visiting left");
        Visit(context.expr(0));

        c.Comment("Visiting right");
        Visit(context.expr(1));

        c.Comment("Popping operands");
        var isRightDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var right = c.PopObject(isRightDouble ? Register.D0 : Register.X0); // x1 = 2

        var isLeftDouble = c.TopObject().Type == StackObject.StackObjectType.Float;
        var left = c.PopObject(isLeftDouble ? Register.D1 : Register.X1); // x0 = 1

        if (isLeftDouble || isRightDouble)
        {
            if (!isLeftDouble) c.Scvtf(Register.D1, Register.X1); // Convert left to float
            if (!isRightDouble) c.Scvtf(Register.D0, Register.X0); // Convert right to float

            c.Fcmp(Register.D1, Register.D0);

            c.Comment("Pushing result");
            switch (operation)
            {
                case "==":
                    c.Cset(Register.X0, "EQ");
                    break;
                case "!=":
                    c.Cset(Register.X0, "NE");
                    break;
            }
            c.Comment("Pushing result");
            c.Push(Register.X0); // x0 = 1 + 2
            c.PushObject(c.CloneObject(isLeftDouble ? left : right));

            return null;
        }
        c.Cmp(Register.X1, Register.X0);
        c.Comment("Pushing result");
        switch (operation)
        {
            case "==":
                c.Cset(Register.X0, "EQ");
                break;
            case "!=":
                c.Cset(Register.X0, "NE");
                break;
        }
        c.Comment("Pushing result");
        c.Push(Register.X0); // x0 = 1 + 2
        c.PushObject(c.CloneObject(left));
        c.Comment("Pushing result");

        return null;
    }

    public override Object? VisitLogical(LanguageParser.LogicalContext context)
    {
        return null;
    }

    public override Object? VisitAssign(LanguageParser.AssignContext context)
    {
        c.Comment("Assign");
        var id = context.ID();

        if (id is LanguageParser.IdentifierContext idContext)
        {
            string varName = idContext.ID().GetText();
            c.Comment("Variable: " + varName);

            c.Comment("Visiting expression");
            Visit(context.expr());

            var valueObject = c.PopObject(Register.X0); // x0 = 1 + 2

            var (offset, varObject) = c.GetObject(varName);

            c.Mov(Register.X1, offset);
            c.Add(Register.X1, Register.SP, Register.X1);
            c.Str(Register.X0, Register.X1); // Store value in variable

            // varObject.Type = valueObject.Type;  

            c.PushObject(c.CloneObject(varObject));
        }

        return null;
    }

    public override Object? VisitForStmtSimple(LanguageParser.ForStmtSimpleContext context)
    {
        c.Comment("For statement");
        var startLabel = c.GetLabel();
        var endLabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;
        continueLabel = startLabel;
        breakLabel = endLabel;

        c.SetLabel(startLabel);
        c.Comment("Visiting expression");
        Visit(context.expr());
        c.PopObject(Register.X0); // x0 = 1 + 2
        c.Cbz(Register.X0, endLabel); // If x0 == 0, go to end
        c.Comment("Visiting block");
        Visit(context.stmt());
        c.B(startLabel); // Go to start
        c.SetLabel(endLabel); // End label
        c.Comment("End of for statement");

        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;
        

        return null;
    }

    public override Object? VisitForStmtComplex(LanguageParser.ForStmtComplexContext context)
    {
        c.Comment("For complex statement");
        
        return null;
    }


    public override Object? VisitForStmtRange(LanguageParser.ForStmtRangeContext context)
    {
        return null;
    }


    public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        return null;
    }

    public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        return null;
    }

    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        return null;
    }

    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        return null;
    }

    public override Object? VisitCallFunc(LanguageParser.CallFuncContext context)
    {
        return null;
    }

    public override Object? VisitInitSlice(LanguageParser.InitSliceContext context)
    {
        return null;
    }

    public override Object? VisitDeclareSlice(LanguageParser.DeclareSliceContext context)
    {
        return null;
    }

    public override Object? VisitSliceIndex(LanguageParser.SliceIndexContext context)
    {
        return null;
    }

    public override Object? VisitSliceJoin(LanguageParser.SliceJoinContext context)
    {
        return null;
    }

    public override Object? VisitSliceLen(LanguageParser.SliceLenContext context)
    {
        return null;
    }

    public override Object? VisitSliceAppend(LanguageParser.SliceAppendContext context)
    {
        return null;
    }

    public override Object? VisitSliceAccess(LanguageParser.SliceAccessContext context)
    {
        return null;
    }

    public override Object? VisitMatrixAccess(LanguageParser.MatrixAccessContext context)
    {
        return null;
    }

    public override Object? VisitInitMatrix(LanguageParser.InitMatrixContext context)
    {
        return null;
    }

    public override Object? VisitItemAssign(LanguageParser.ItemAssignContext context)
    {
        return null;
    }

    public override Object? VisitItemMatrixAssign(LanguageParser.ItemMatrixAssignContext context)
    {
        return null;
    }


    public override Object? VisitStructDclInit(LanguageParser.StructDclInitContext context)
    {
        return null;
    }


    public override Object? VisitInstanceStruct(LanguageParser.InstanceStructContext context)
    {
        return null;
    }

    public override Object? VisitIncrement(LanguageParser.IncrementContext context)
    {
        return null;
    }

    public override Object? VisitDecrement(LanguageParser.DecrementContext context)
    {
        return null;
    }

    public override Object? VisitFunctionDclInit(LanguageParser.FunctionDclInitContext context)
    {
        return null;
    }


    public override Object? VisitStructAccess(LanguageParser.StructAccessContext context)
    {
        return null;
    }


    public override Object? VisitStructItemAssign(LanguageParser.StructItemAssignContext context)
    {
        return null;
    }

    public override Object? VisitSliceAssign(LanguageParser.SliceAssignContext context)
    {
        return null;
    }


    public override Object? VisitFunctionStructDclInit(LanguageParser.FunctionStructDclInitContext context)
    {
        return null;
    }



    public override Object? VisitStructMethodCall(LanguageParser.StructMethodCallContext context)
    {
        return null;
    }



}
