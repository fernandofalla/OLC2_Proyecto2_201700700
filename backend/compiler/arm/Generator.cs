using System.Text;

public class StackObject
{
    public enum StackObjectType { Int, Float, String, Bool, Char, Void }
    public StackObjectType Type { get; set; }
    public int Length { get; set; }
    public int Depth { get; set; }
    public string? Id { get; set; }
}

public class ArmGenerator
{
    private readonly List<string> instructions = new List<string>();
    private readonly StandarLibrary stdLib = new StandarLibrary();
    private List<StackObject> stack = new List<StackObject>();

    private int depth = 0;

    // Stack operations

    public void PushObject(StackObject obj)
    {
        stack.Add(obj);
    }

    public void PushConstant(StackObject obj, Object value)
    {
        switch (obj.Type)
        {
            case StackObject.StackObjectType.Int:
                Mov(Register.X0, (int)value);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Float:
                // TODO: Handle float
                break;
            case StackObject.StackObjectType.String:
                // TODO: Handle string
                break;

        }
        PushObject(obj);
    }

    public StackObject PopObject(string rd)
    {
        var obj = stack.Last();
        stack.RemoveAt(stack.Count - 1);
        Pop(rd);
        return obj;
    }

    public StackObject IntObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Int,
            Length = 8,
            Depth = depth,
            Id = null
        };
    }

    public StackObject FloatObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Float,
            Length = 8,
            Depth = depth,
            Id = null
        };
    }
    public StackObject StringObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.String,
            Length = 8,
            Depth = depth,
            Id = null
        };
    }
    public StackObject BoolObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Bool,
            Length = 8,
            Depth = depth,
            Id = null
        };
    }
    public StackObject CharObject()
    {
        return new StackObject
        {
            Type = StackObject.StackObjectType.Char,
            Length = 8,
            Depth = depth,
            Id = null
        };
    }

    public StackObject CloneObject(StackObject obj)
    {
        return new StackObject
        {
            Type = obj.Type,
            Length = obj.Length,
            Depth = obj.Depth,
            Id = obj.Id
        };
    }

    // Environment

    public void NewScope()
    {
        depth++;
    }

    public int endScope()
    {
        int byteOffset = 0;
        for (int i = stack.Count - 1; i >= 0; i--)
        {
            if (stack[i].Depth == depth)
            {
                byteOffset += stack[i].Length;
                stack.RemoveAt(i);
            }
            else
            {
                break;
            }
        }
        depth--;
        return byteOffset;
    }

    public void TagObject(string id)
    {
        stack.Last().Id = id;
    }

    public (int, StackObject) GetObject(string id)
    {
        int byteOffset = 0;

        for (int i = stack.Count - 1; i >= 0; i--)
        {
            if (stack[i].Id == id)
            {
                return (i, stack[i]);
            }
            
            byteOffset += stack[i].Length;

        }
        throw new Exception($"Object {id} not found");
    }

    // finish the stack

    public void Add(string rd, string rs1, string rs2)
    {
        instructions.Add($"ADD {rd}, {rs1}, {rs2}");
    }

    public void Sub(string rd, string rs1, string rs2)
    {
        instructions.Add($"SUB {rd}, {rs1}, {rs2}");
    }
    public void Mul(string rd, string rs1, string rs2)
    {
        instructions.Add($"MUL {rd}, {rs1}, {rs2}");
    }
    public void Div(string rd, string rs1, string rs2)
    {
        instructions.Add($"SDIV {rd}, {rs1}, {rs2}");
    }
    public void Addi(string rd, string rs1, int imm)
    {
        instructions.Add($"ADDI {rd}, {rs1}, #{imm}");
    }
    public void Subi(string rd, string rs1, int imm)
    {
        instructions.Add($"SUBI {rd}, {rs1}, #{imm}");
    }
    public void Muli(string rd, string rs1, int imm)
    {
        instructions.Add($"MULI {rd}, {rs1}, #{imm}");
    }
    public void Divi(string rd, string rs1, int imm)
    {
        instructions.Add($"SDIVI {rd}, {rs1}, #{imm}");
    }

    // memory operations
    public void Str(string rs1, string rs2, int offset = 0)
    {
        instructions.Add($"STR {rs1}, [{rs2}, #{offset}]");
    }
    public void Ldr(string rd, string rs1, int offset = 0)
    {
        instructions.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }

    // General
    public void Mov(string rd, int imm)
    {
        instructions.Add($"MOV {rd}, #{imm}");
    }
    public void Push(string rs)
    {
        instructions.Add($"STR {rs}, [SP, #-8]!");
    }
    public void Pop(string rd)
    {
        instructions.Add($"LDR {rd}, [SP], #8");
    }
    public void Svc()
    {
        instructions.Add($"SVC #0");
    }
    public void EndProgram()
    {
        Mov(Register.X0, 0);
        Mov(Register.X8, 93);
        Svc();
    }
    public void PrintInteger(string rs)
    {
        stdLib.Use("print_integer");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_integer");
    }
    public void Comment(string comment)
    {
        instructions.Add($"// {comment}");
    }
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");

        EndProgram();
        foreach (var instruction in instructions)
        {
            sb.AppendLine(instruction);
        }

        sb.AppendLine("\n\n\n // Standard Library");
        sb.AppendLine(stdLib.GetFunctionDefinitions());

        return sb.ToString();
    }
}