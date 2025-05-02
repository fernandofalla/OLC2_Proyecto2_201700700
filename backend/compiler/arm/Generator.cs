using System.Text;

public class StackObject
{
    public enum StackObjectType { Int, Float, String, Bool, Char, Void, Undefined }
    public StackObjectType Type { get; set; }
    public int Offset { get; set; }
    public int Length { get; set; }
    public int Depth { get; set; }
    public string? Id { get; set; }
}

public class ArmGenerator
{
    public List<string> instructions = new List<string>();
    public List<string> funcInstructions = new List<string>();
    private readonly StandarLibrary stdLib = new StandarLibrary();
    private List<StackObject> stack = new List<StackObject>();

    private int depth = 0;

    private int labelCounter = 0;

    public String GetLabel()
    {
        return $"L{labelCounter++}";
    }

    public void SetLabel(string label)
    {
        instructions.Add($"{label}:");
    }

    // Stack operations

    public StackObject TopObject()
    {
        return stack.Last();
    }

    public void PushObject(StackObject obj)
    {
        stack.Add(obj);
    }
    public void PopObject()
    {
        Comment("Popping object from stack");
        try{
            stack.RemoveAt(stack.Count - 1);
        }
        catch (System.Exception)
        {
            Console.WriteLine(this.ToString());
            throw new Exception("Stack is empty");
        }
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
                ulong floatBits = (ulong)BitConverter.DoubleToInt64Bits((double)value);
                ushort[] floatParts = new ushort[4];
                for (int i = 0; i < 4; i++)
                {
                    floatParts[i] = (ushort)((floatBits >> (i * 16)) & 0xFFFF);
                }

                instructions.Add($"MOVZ X0, #{floatParts[0]}, LSL #0");
                for (int i = 1; i < 4; i++)
                {
                    instructions.Add($"MOVK X0, #{floatParts[i]}, LSL #{i * 16}");
                }
                Push(Register.X0);

                break;
            case StackObject.StackObjectType.String:
                // TODO: Handle string
                List<byte> stringArray = Utils.StringTo1ByteArray((string)value);
                Push(Register.HP);
                for (int i = 0; i < stringArray.Count; i++)
                {
                    var charCode = stringArray[i];

                    Comment("Pushing string array (chars) to heap");

                    Mov("w0", charCode);
                    Strb("w0", Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);

                }
                break;
            
            case StackObject.StackObjectType.Bool:
                Mov(Register.X0, (bool)value ? 1 : 0);
                Push(Register.X0);
                break;
            
            case StackObject.StackObjectType.Char:
                Mov(Register.W0, (char)value);
                Push(Register.W0);
                break;

        }
        PushObject(obj);
    }

    public StackObject PopObject(string rd)
    {
        var obj = stack.Last();
        PopObject();
        // stack.RemoveAt(stack.Count - 1);
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
                return (byteOffset, stack[i]);
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
    public void Strb(string rs1, string rs2)
    {
        instructions.Add($"STRB {rs1}, [{rs2}]");
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
    public void Scvtf(string rd, string rs)
    {
        instructions.Add($"SCVTF {rd}, {rs}");
    }
    public void Fmov(string rd, string rs)
    {
        instructions.Add($"FMOV {rd}, {rs}");
    }
    public void Fadd(string rd, string rs1, string rs2)
    {
        instructions.Add($"FADD {rd}, {rs1}, {rs2}");
    }
    public void Fsub(string rd, string rs1, string rs2)
    {
        instructions.Add($"FSUB {rd}, {rs1}, {rs2}");
    }
    public void Fmul(string rd, string rs1, string rs2)
    {
        instructions.Add($"FMUL {rd}, {rs1}, {rs2}");
    }
    public void Fdiv(string rd, string rs1, string rs2)
    {
        instructions.Add($"FDIV {rd}, {rs1}, {rs2}");
    }
    public void Fcmp(string rs1, string rs2)
    {
        instructions.Add($"FCMP {rs1}, {rs2}");
    }
    public void Cmp(string rs1, string rs2)
    {
        instructions.Add($"CMP {rs1}, {rs2}");
    }
    public void Cbz(string rs, string label)
    {
        instructions.Add($"CBZ {rs}, {label}");
    }
    public void Cset(string rd, string cond)
    {
        instructions.Add($"CSET {rd}, {cond}");
    }
    public void Svc()
    {
        instructions.Add($"SVC #0");
    }
    public void B(string label)
    {
        instructions.Add($"B {label}");
    }
    public void Br(string label)
    {
        instructions.Add($"BR {label}");
    }
    public void Adr(string rd, string label)
    {
        instructions.Add($"ADR {rd}, {label}");
    }
    public void Bl(string label)
    {
        instructions.Add($"BL {label}");
    }
    public void Beq(string label)
    {
        instructions.Add($"BEQ {label}");
    }
    public void Bne(string label)
    {
        instructions.Add($"BNE {label}");
    }
    public void Bgt(string label)
    {
        instructions.Add($"BGT {label}");
    }
    public void Blt(string label)
    {
        instructions.Add($"BLT {label}");
    }
    public void Bge(string label)
    {
        instructions.Add($"BGE {label}");
    }
    public void Ble(string label)
    {
        instructions.Add($"BLE {label}");
    }
    public void Be(string label)
    {
        instructions.Add($"BE {label}");
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
    public void PrintString(string rs)
    {
        stdLib.Use("print_string");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_string");
    }
    public void PrintLn()
    {                
        instructions.Add($"MOV X0, #1");
        instructions.Add($"ADR X1, newline_char");
        instructions.Add($"MOV X2, #1");
        instructions.Add($"MOV X8, #64");
        instructions.Add($"SVC #0");       
    }
    public void PrintFloat()
    {
        stdLib.Use("print_integer");
        stdLib.Use("print_double");        
        instructions.Add($"BL print_double");
    }
    public void PrintChar(string rs)
    {
        stdLib.Use("print_char");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_char");
    }
    public void PrintBool(string rs)
    {
        stdLib.Use("print_boolean");
        instructions.Add($"MOV X0, {rs}");
        instructions.Add($"BL print_boolean");
    }
    public void Comment(string comment)
    {
        instructions.Add($"// {comment}");
    }
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".data");
        sb.AppendLine("heap: .space 4096");
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");
        sb.AppendLine("    ADR x10, heap");

        EndProgram();
        foreach (var instruction in instructions)
        {
            sb.AppendLine(instruction);
        }

        sb.AppendLine("\n\n\n // Functions");
        funcInstructions.ForEach(i => sb.AppendLine(i));

        sb.AppendLine("\n\n\n // Standard Library");
        sb.AppendLine(stdLib.GetFunctionDefinitions());

        return sb.ToString();
    }

    public StackObject GetFrameLocal(int index)
    {
        var obj = stack.Where(o => o.Type == StackObject.StackObjectType.Undefined).ToList()[index];
        return obj;
    }
}