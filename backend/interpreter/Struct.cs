// using analyzer;

// public class LanguageStruct : Invocable
// {

//     public string Id { get; set; }
//     public Dictionary<string, LanguageParser.VarDclContext> Props { get; set; }

//     public Dictionary<string, ForeignFunction> Methods { get; set; }


//     public LanguageStruct(string id, Dictionary<string, LanguageParser.VarDclContext> props, Dictionary<string, ForeignFunction> methods)
//     {
//         Id = id;
//         Props = props;
//         Methods = methods;
//     }

//     public ForeignFunction? GetMethod(string name)
//     {
//         if (Methods.ContainsKey(name))
//         {
//             return Methods[name];
//         }
//         return null;
//     }

//     public int Arity()
//     {
//         var constructor GetMethod("constructor");
//         if (constructor != null)
//         {
//             return constructor.Arity();
//         }
//         return 0;
//     }

//     ValueWrapper Invocable.Invoke(List<ValueWrapper> args, LanguageParser visitor)
//     {
//         var constructor = GetMethod("constructor");
//         if (constructor != null)
//         {
//             return constructor.Invoke(args);
//         }
//         return new NullValue();
//     }
// }