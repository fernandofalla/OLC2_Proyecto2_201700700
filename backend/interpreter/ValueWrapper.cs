using analyzer;

public abstract record ValueWrapper;

public record IntValue(int Value) : ValueWrapper;
public record DoubleValue(double Value) : ValueWrapper;
public record StringValue(string Value) : ValueWrapper;
public record BoolValue(bool Value) : ValueWrapper;
public record RuneValue(char Value) : ValueWrapper;
public record ArrayValue(ValueWrapper[] Value, string Tipo) : ValueWrapper;
public record MatrixValue(ValueWrapper[][] Value, string Tipo) : ValueWrapper;
public record AccessArrayValue(ValueWrapper Value) : ValueWrapper;
public record FunctionValue(Invocable invocable, string name) : ValueWrapper;
// public record StructValue(string Id, Dictionary<string, ValueWrapper> Attributes) : ValueWrapper;
public record FuncValue(string Name, List<string> ParamNames, List<string> ParanTypes, string ReturnType, LanguageParser.FunctionDclInitContext Context) : ValueWrapper;
public record StructValue(string Id, Dictionary<string, AtributeValue> Attributes, Dictionary<string, FunctionValue> Methods) : ValueWrapper;
// public record StructValue(string Id, Dictionary<string, AtributeValue> Attributes) : ValueWrapper;
public record AtributeValue(string Id, string Tipo, ValueWrapper Value) : ValueWrapper;
public record StructMethod(string Name, Func<StructValue, List<ValueWrapper>, ValueWrapper> Invoke);
public record UpdateValue(string Id, ValueWrapper Value) : ValueWrapper;
public record NullValue : ValueWrapper;
public record NillValue : ValueWrapper;
public record VoidValue : ValueWrapper;

