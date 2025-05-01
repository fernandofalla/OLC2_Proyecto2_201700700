using System.ComponentModel;
using System.Numerics;
using System.Text.RegularExpressions;
using analyzer;
using Antlr4.Runtime.Misc;
using Antlr4.Runtime.Tree;

public class FunctionMetadata
{
    public int FrameSize;
    public StackObject.StackObjectType ReturnType;
}

public class CompilerVisitor : LanguageBaseVisitor<Object?>  // Cambiar int -> Object?
{

    public ArmGenerator c = new ArmGenerator();

    private string continueLabel = "";
    private string breakLabel = "";
    private string returnLabel = "";

    private Dictionary<string, FunctionMetadata> functions = new Dictionary<string, FunctionMetadata>();
    private string? insideFunction = null;
    private int framePointerOffset = 0;

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

        if (insideFunction != null)
        {
            var localObject = c.GetFrameLocal(framePointerOffset);
            var valueObject = c.PopObject(Register.X0);

            // c.Mov(Register.X1, localObject.Offset * 8);
            c.Mov(Register.X1, framePointerOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
            c.Str(Register.X0, Register.X1); // Store value in variable

            localObject.Type = valueObject.Type;
            framePointerOffset++;

            return null;
        }

        c.TagObject(id);

        return null;
    }

    public override Object? VisitImplicitVarDcl(LanguageParser.ImplicitVarDclContext context)
    {
        var id = context.ID().GetText();
        c.Comment("Variable: " + id);

        Visit(context.expr());

        if (insideFunction != null)
        {
            var localObject = c.GetFrameLocal(framePointerOffset);
            var valueObject = c.PopObject(Register.X0);

            // c.Mov(Register.X1, localObject.Offset * 8);
            c.Mov(Register.X1, framePointerOffset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
            c.Str(Register.X0, Register.X1); // Store value in variable

            localObject.Type = valueObject.Type;
            framePointerOffset++;

            return null;
        }

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
        if (hasElse)
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

        if (insideFunction != null)
        {
            c.Mov(Register.X0, obj.Offset * 8);
            c.Sub(Register.X0, Register.FP, Register.X0);

            c.Ldr(Register.X0, Register.X0); // Load value from variable
            c.Push(Register.X0); // Push value to stack

            var cloneObject = c.CloneObject(obj);
            c.PushObject(cloneObject); // Push object to stack               

            return null;
        }

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

        switch (operation)
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

        var varName = context.ID().GetText();
        c.Comment("Variable: " + varName);

        c.Comment("Visiting expression");
        Visit(context.expr());

        var valueObject = c.PopObject(Register.X0); // x0 = 1 + 2

        var (offset, varObject) = c.GetObject(varName);

        if (insideFunction != null)
        {
            c.Mov(Register.X1, varObject.Offset * 8);
            c.Sub(Register.X1, Register.FP, Register.X1);
            c.Str(Register.X0, Register.X1); // Store value in variable            
            return null;
        }

        c.Mov(Register.X1, offset);
        c.Add(Register.X1, Register.SP, Register.X1);
        c.Str(Register.X0, Register.X1); // Store value in variable

        varObject.Type = valueObject.Type;

        c.Push(Register.X0); // Push value to stack
        c.PushObject(c.CloneObject(varObject));

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

        /*
            .. init (asignacion o declaracion)
            startlabel:
                .. condicion
                if (condicion) gota endlabel
                .. bloque
                increment: (si es continue)
                .. incremento
                gota startlabel
            endlabel:
        */

        c.Comment("For complex statement");

        var startlabel = c.GetLabel();
        var endlabel = c.GetLabel();
        var incrementlabel = c.GetLabel();

        var prevContinueLabel = continueLabel;
        var prevBreakLabel = breakLabel;

        continueLabel = incrementlabel;
        breakLabel = endlabel;

        c.Comment("Visiting init");
        c.NewScope();

        Visit(context.varDcl());
        c.SetLabel(startlabel);

        Visit(context.expr(0));
        c.PopObject(Register.X0); // x0 = 1 + 2

        c.Cbz(Register.X0, endlabel); // If x0 == 0, go to end

        Visit(context.stmt());
        c.SetLabel(incrementlabel); // Increment label

        Visit(context.expr(1));
        c.B(startlabel); // Go to start
        c.SetLabel(endlabel); // End label


        var bytesToRemove = c.endScope();
        if (bytesToRemove > 0)
        {
            c.Comment("Removing " + bytesToRemove + " bytes from stack");
            c.Mov(Register.X0, bytesToRemove);
            c.Add(Register.SP, Register.SP, Register.X0);
            c.Comment("New stack pointer: ");
        }

        continueLabel = prevContinueLabel;
        breakLabel = prevBreakLabel;

        c.Comment("End of for statement");

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
        c.Comment("Break statement");
        if (breakLabel != null)
        {
            c.B(breakLabel);
        }
        return null;
    }

    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        c.Comment("Continue statement");
        if (continueLabel != null)
        {
            c.B(continueLabel);
        }
        return null;
    }

    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        c.Comment("Return statement");
        if(context.expr() == null)
        {
            c.B(returnLabel);
            return null;            
        }
        if(insideFunction == null)
        {
            throw new Exception("Return statement outside function");                        
        }

        c.Comment("Visiting expression");
        Visit(context.expr());
        c.PopObject(Register.X0); // x0 = 1 + 2

        var frameSize = functions[insideFunction].FrameSize;
        var returnOffset = frameSize - 1;
        c.Mov(Register.X1, returnOffset * 8);
        c.Sub(Register.X1, Register.FP, Register.X1);
        c.Str(Register.X0, Register.X1); // Store return value
        c.B(returnLabel); // Go to return label

        c.Comment("End of return statement");
        return null;
    }

    public override Object? VisitCallFunc(LanguageParser.CallFuncContext context)
    {
        if (context.embebidaex().ID() == null) return null;
        string funcName = context.embebidaex().ID().GetText();
        var call = context.call();

        var postFuncCallLabel = c.GetLabel();

        int baseOffset = 2;
        int stackElementSize = 8;

        c.Mov(Register.X0, baseOffset * stackElementSize);
        c.Sub(Register.SP, Register.SP, Register.X0);

        if (call.args() != null)
        {
            c.Comment("Visiting args");
            foreach (var param in call.args().expr())
            {
                Visit(param);
            }
        }

        c.Mov(Register.X0, stackElementSize * (baseOffset + call.args().expr().Length));
        c.Add(Register.SP, Register.SP, Register.X0);

        c.Mov(Register.X0, stackElementSize);
        c.Sub(Register.X0, Register.SP, Register.X0);

        c.Adr(Register.X1, postFuncCallLabel);
        c.Push(Register.X1);

        c.Push(Register.FP);
        c.Add(Register.FP, Register.X0, Register.XZR);

        int frameSize = functions[funcName].FrameSize;
        c.Mov(Register.X0, (frameSize - 2) * stackElementSize);
        c.Sub(Register.SP, Register.SP, Register.X0);

        c.Comment("Calling function: " + funcName);
        c.Bl(funcName);
        c.Comment("Function call: " + funcName);
        c.SetLabel(postFuncCallLabel);

        var returnOffset = frameSize - 1;
        c.Mov(Register.X4, returnOffset * stackElementSize);
        c.Sub(Register.X4, Register.FP, Register.X4);
        c.Ldr(Register.X4, Register.X4); // Load return value

        c.Mov(Register.X1, stackElementSize);
        c.Sub(Register.X1, Register.FP, Register.X1);
        c.Ldr(Register.FP, Register.X1); // Load frame pointer

        c.Mov(Register.X0, stackElementSize * frameSize);
        c.Add(Register.SP, Register.SP, Register.X0); // Remove frame from stack

        c.Push(Register.X4); // Push return value to stack
        c.PushObject(new StackObject{
            Type = functions[funcName].ReturnType,
            Id = null,
            Offset = 0,
            Length = 8
        });

        c.Comment("End of function call: " + funcName);

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
        c.Comment("Increment");

        return null;
    }

    public override Object? VisitDecrement(LanguageParser.DecrementContext context)
    {
        return null;
    }

    public override Object? VisitFunctionDclInit(LanguageParser.FunctionDclInitContext context)
    {
        int baseOffset = 2;
        int paramsOffset = 0;
        if (context.@params() != null)
        {
            var paramList = context.@params();
            paramsOffset = 1;
            paramsOffset += paramList.children.Count(hijo => hijo.GetText() == ",");
        }

        FrameVisitor frameVisitor = new FrameVisitor(baseOffset + paramsOffset);

        foreach (var dcl in context.dcl())
        {
            frameVisitor.Visit(dcl);
        }

        var frame = frameVisitor.Frame;
        int localOffset = frame.Count;
        int returnOffset = 1;

        int totalFrameSize = baseOffset + paramsOffset + localOffset + returnOffset;

        string funcName = context.ID().GetText();
        StackObject.StackObjectType funcType;
        if (context.tipo() != null)
        {
            funcType = GetType(context.tipo().GetText());
        }
        else
        {
            funcType = StackObject.StackObjectType.Void;
        }
        Console.WriteLine("funtype: " + funcType);

        Console.WriteLine("Total frame: " + totalFrameSize);

        functions.Add(funcName, new FunctionMetadata
        {
            FrameSize = totalFrameSize,
            ReturnType = funcType
        });

        var prevInstrucions = c.instructions;
        c.instructions = new List<string>();

        // Parametros
        var paramCounter = 0;
        var childrenN = context.@params().children;
        for (int i = 0; i < childrenN.Count - 1; i++)
        {
            if (childrenN[i] is ITerminalNode idNode && idNode.Symbol.Type == LanguageParser.ID)
            {
                var id = idNode.GetText();
                var tipo = childrenN[i + 1].GetText();
                c.PushObject(new StackObject
                {
                    Type = GetType(tipo),
                    Id = id,
                    Offset = baseOffset + paramCounter,
                    Length = 8
                });
                paramCounter++;
            }
        }

        foreach (FrameElement element in frame)
        {
            c.PushObject(new StackObject
            {
                Type = StackObject.StackObjectType.Undefined,
                Id = element.Name,
                Offset = element.Offset,
                Length = 8
            });
        }

        insideFunction = funcName;
        framePointerOffset = 0;

        returnLabel = c.GetLabel();

        c.Comment("Function declaration: " + funcName);
        c.SetLabel(funcName);

        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }

        c.SetLabel(returnLabel);

        c.Add(Register.X0, Register.FP, Register.XZR);
        c.Ldr(Register.LR, Register.X0);
        c.Br(Register.LR);

        c.Comment("End of function: " + funcName);

        for (int i = 0; i < paramsOffset + localOffset; i++)
        {
            c.PopObject();
        }

        foreach (var instruction in c.instructions)
        {
            c.funcInstructions.Add(instruction);
        }

        insideFunction = null;

        return null;
    }

    private StackObject.StackObjectType GetType(string v)
    {
        return v switch
        {
            "int" => StackObject.StackObjectType.Int,
            "float64" => StackObject.StackObjectType.Float,
            "string" => StackObject.StackObjectType.String,
            "bool" => StackObject.StackObjectType.Bool,
            "rune" => StackObject.StackObjectType.Char,
        };
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
