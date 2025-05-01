using analyzer;
using Antlr4.Runtime.Misc;

public class FrameElement
{
    public string Name {get; set;}
    public int Offset {get; set;}
    public FrameElement(String name, int offset)
    {
        Name = name;
        Offset = offset;
    }    
}

public class FrameVisitor : LanguageBaseVisitor<Object?>
{
    public List<FrameElement> Frame;
    public int LocalOffset;
    public int BaseOffset;
    public FrameVisitor(int baseOffset)
    {
        Frame = new List<FrameElement>();
        LocalOffset = 0;
        BaseOffset = baseOffset;
    }

    public override Object? VisitExplicitVarDcl(LanguageParser.ExplicitVarDclContext context)
    {
        string name = context.ID().GetText();
        Frame.Add(new FrameElement(name, BaseOffset + LocalOffset));
        LocalOffset += 1;
        return null;
    }

    public override Object? VisitImplicitVarDcl(LanguageParser.ImplicitVarDclContext context)
    {
        string name = context.ID().GetText();
        Frame.Add(new FrameElement(name, BaseOffset + LocalOffset));
        LocalOffset += 1;
        return null;
    }

    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return null;
    }

    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        Visit(context.stmt(0));
        if(context.stmt().Length > 1) Visit(context.stmt(1));
        return null;
    }

    public override Object? VisitForStmtSimple(LanguageParser.ForStmtSimpleContext context)
    {
        Visit(context.stmt());
        return null;
    }

    public override Object? VisitForStmtComplex(LanguageParser.ForStmtComplexContext context)
    {
        if(context.varDcl() != null)
        {
            Visit(context.varDcl());
        }
        Visit(context.stmt());
        return null;
    }
}