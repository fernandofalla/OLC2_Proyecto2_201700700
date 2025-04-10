using System.Text.RegularExpressions;
using analyzer;

public class CompilerVisitor : LanguageBaseVisitor<Object?>  // Cambiar int -> Object?
{

    public ArmGenerator c = new ArmGenerator();
    public CompilerVisitor()
    {

    }

    // VisitProgram
    public override Object? VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl()){
            Visit(dcl);
        }
        return null;
    }

    public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        Visit(context.expr());
        c.Pop(Register.X0); // x0 = 1 + 2
        c.PrintInteger(Register.X0);
        return null;
    }

    public override Object? VisitExplicitVarDcl(LanguageParser.ExplicitVarDclContext context)
    {
        return null;
    }

    public override Object? VisitImplicitVarDcl(LanguageParser.ImplicitVarDclContext context)
    {
        return null;
    }

    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return null;
    }

    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        return null;
    }

    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        return null;
    }

    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
    {
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
        c.Mov(Register.X0, int.Parse(value));
        c.Push(Register.X0);        
        return null;
    }

    public override Object? VisitDecimal(LanguageParser.DecimalContext context)
    {
        return null;
    }

    public override Object? VisitCadena(LanguageParser.CadenaContext context)
    {
        return null;
    }

    public override Object? VisitBooleano(LanguageParser.BooleanoContext context)
    {
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
        var operation = context.op.Text;

        // 1 + 2
        Visit(context.expr(0));
        Visit(context.expr(1));

        c.Pop(Register.X1); // x1 = 2
        c.Pop(Register.X0); // x0 = 1

        if(operation == "+")
        {
            c.Add(Register.X0, Register.X0, Register.X1);
        }
        else if (operation == "-")
        {
            c.Sub(Register.X0, Register.X0, Register.X1);
        }        

        c.Push(Register.X0); // x0 = 1 + 2

        return null;
    }

    public override Object? VisitRelational(LanguageParser.RelationalContext context)
    {
        return null;
    }

    public override Object? VisitEquality(LanguageParser.EqualityContext context)
    {
        return null;
    }

    public override Object? VisitLogical(LanguageParser.LogicalContext context)
    {
        return null;
    }

    public override Object? VisitAssign(LanguageParser.AssignContext context)
    {
        return null;
    }

    public override Object? VisitForStmtSimple(LanguageParser.ForStmtSimpleContext context)
    {
        return null;
    }

    public override Object? VisitForStmtComplex(LanguageParser.ForStmtComplexContext context)
    {
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
