# Documentación tecnica

## Requisitos previos

### Herramientas

 - .NET 9.0
 - ANTLR4
 - node js
 - git
 - java
 - Editor de codigo de su preferencia

## Configuración inicial

- Clonar repositorio publico en una carpeta cualquiera

```
git clone https://github.com/fernandofalla/OLC2_Proyecto1_201700700.git
```

- Situarse en la raiz del proyecto el cual contiene la parte visual frontend y la parte del procesamiento backend.

- El frontend contiene las vistas y esta hecho con **React**
- El backend contiene la gramatica hecha con **ANTLR4**, el interprete utilizando el lenguaje de programación **C#** implementando el patron **visitor**.


## Uso

Para ejecutar **GoLight** se debe situar tanto en la raiz del frontend como del backend
 - frontend
```
cd frontend
npm run dev
```
- backend
```
cd backend
dotnet watch run
```

La apliacion es intuitiva por lo que no se detalla a profundidad cada funcionalidad

![frontend_inicio.png](./assets/frontend_inicio.png)

## Mantenimiento y actualización

### Gramatica

Si se desea realizar un cambio en la gramatica para aceptar algo especifico que no se detallo en el programa se debe modificar el siguiente archivo:

```
cd backend
nano Language.g4 # o algun editor de codigo
```

El formato correcto debe ser el siguiente:
```
<instruccion>: <estructura> ;  # <Nombredelvisitor>
// ejemplo:
stmt: 'if' expr stmt ('else' stmt)?	       # IfStmt
;
```

 - Como se detallo anteriormente, se utilizo el patron visitor por lo que los cambios que se realicen deben reflejarse utilizando antlr4, de la siguiente forma:

 ```
 antlr4 -Dlanguage=CSharp -o analyzer -package analyzer -visitor *.g4
 ```

### Visitor

Para manejar los visitor se debe abrir el archivo **CompilerVisitor.cs** situado en **backend/Compiler**, este archivo contiene las instrucciones o expresiones que se interpretaran tomando la entrada correspondiente y generando una salida.

```
cd backend/Compiler
nano CompilerVisitor.cs # o algun editor de codigo
```

#### Clases importantes

Esta es una lista de clases que son necesarias de analizar para realizar algun cambio:

- ValueWrapper.cs

Este archivo define la clase ValueWrapper y sus derivadas, representando los distintos tipos de valores que pueden existir en el lenguaje. Incluye valores primitivos como int, float, string, bool, así como estructuras más complejas como ArrayValue, MatrixValue, y StructValue

- TransferValues.cs

Contiene clases que manejan los valores de control de flujo como break, continue y return. Estos valores permiten la ejecución de instrucciones de control dentro de bucles y funciones.

- Foreign.cs

Este clase gestiona la ejecución de funciones externas dentro del lenguaje. Permite la interoperabilidad entre el lenguaje implementado y funciones definidas en otros módulos o lenguajes.

- Environment.cs

Define la estructura del entorno en tiempo de ejecución. Este clase maneja la declaración, almacenamiento y recuperación de variables dentro de su contexto, incluyendo la jerarquía de entornos anidados.

- Embeded.cs

Este clase contiene la implementación de funciones embebidas dentro del lenguaje. Son funciones predefinidas accesibles por los usuarios sin necesidad de definirlas explícitamente.

### Controlador de Compilación y Análisis del Código

Este archivo define el controlador **Compile.cs** dentro de la API **backend/Controllers**, encargándose de recibir, analizar y ejecutar el código fuente proporcionado por el usuario. Utiliza ANTLR para el análisis léxico y sintáctico, y ejecuta la interpretación a través de CompilerVisitor.

#### Flujo

 - Recepción del código fuente: A través de la ruta POST /compile/run, procesa y compila el código recibido en el cuerpo de la solicitud.

 - Consulta de información: Permite obtener reportes de errores (GET /compile/error) y símbolos (GET /compile/symbols).

 - Integración con ANTLR: Configura los listeners para el análisis léxico y sintáctico.

 - Manejo de errores: Proporciona mecanismos para capturar y devolver errores léxicos, sintácticos y semánticos.

 - Proporciona una salida si no hubo ninguna excepción.