grammar Language;

// program: 'func' 'main' '(' ')' '{' dcl* '}';
program:  dcl* ;

dcl: varDcl ';'? | sliceDcl ';'? | stmt | matrixDcl ';'? | structDcl ';'? | instStruct ';'? | functionDcl | functionStructDcl ;

varDcl: 'var' ID tipo? ('=' expr)?			# ExplicitVarDcl
	| ID ':=' expr							# ImplicitVarDcl
;

sliceDcl: ID ':=' '[' ']' tipo '{' args '}'										# InitSlice
	| 'var' ID '[' ']' tipo													# DeclareSlice
;

matrixDcl: ID ':=' '[' ']' '[' ']' tipo '{' matrixargs '}'							# InitMatrix
;

structDcl: 'type' ID 'struct'  '{' atributos '}'									# StructDclInit
;
// structDcl: 'struct' ID  '{' atributos '}'									# StructDclInit
// ;

instStruct: ID ID '=' '{' argsA '}' 										# InstanceStruct
;

functionDcl: 'func' ID '(' params? ')' tipo? '{' dcl* '}'								# FunctionDclInit
;

functionStructDcl: 'func' '(' ID ID ')' ID '(' params? ')' tipo? '{' dcl* '}'			# FunctionStructDclInit
;

stmt: expr ';'?                 														# ExprStmt 
    | 'fmt.Println(' expr ')'   													# PrintStmt		
	| '{' dcl* '}'																	# BlockStmt
	| 'if' expr stmt ('else' stmt)?											# IfStmt
	| 'switch' expr '{' caseBlock+ defaultBlock? '}'								# SwitchStmt
	| 'for' expr  stmt																# ForStmtSimple
	| 'for' varDcl ';' expr ';' expr stmt											# ForStmtComplex
	| 'for' ID ',' ID ':=' 'range' ID stmt											# ForStmtRange
	| 'break' ';'?																		# BreakStmt
	| 'continue' ';'?																	# ContinueStmt
	| 'return' expr? ';'?																# ReturnStmt
;

params: ID tipo (',' ID tipo)* ;

args: expr (',' expr)*;

matrixargs: '{' args '}' (',' '{' args '}')*;

atributos: ID tipo ';'? (ID tipo ';'?)*;
// atributos: tipo ID ';' (tipo ID ';')*;

argsA: ID ':' expr (',' ID ':' expr)*;

caseBlock: 'case' expr ':' stmt*;

defaultBlock: 'default' ':' stmt*;

expr:
	'-' expr								# Negate
	| 'nil'									# Nilll
	| ID '.' ID call				    	# StructMethodCall
	| embebidaex call				    	# CallFunc
	| ID '++'								# Increment
	| ID '--'								# Decrement
	| expr op = ('*' | '/' | '%') expr		# MulDivMod
	| expr op = ('+' | '-') expr			# AddSub	
	| expr op = ('<' | '<=' | '>' | '>=') expr	# Relational
	| expr op = ('==' | '!=') expr			# Equality
	| ID '[' expr ']' '[' expr ']' '=' expr	# ItemMatrixAssign
	| ID '[' expr ']' '=' expr				# ItemAssign	
	| ID '=' expr							# Assign
	| ID ('.' ID)+ ';'?						# StructAccess
	| ID '.' ID '=' expr ';'?				# StructItemAssign
	| ID '=' '[' ']' tipo '{' args '}'		# SliceAssign 
	| BOOL                          		# Booleano    
	| expr op = ('&&' | '||') expr			# Logical
	| '!' expr								# Not	
    | DOUBLE                        		# Decimal
	| RUNE									# Caracter	
    | STRING                        		# Cadena    
	| INT									# Number
	| 'slices' '.' 'Index' '(' ID ',' expr ')'    # SliceIndex
	| 'strings' '.' 'Join' '(' ID ',' expr ')'    # SliceJoin
	| 'len' '(' expr ')'						# SliceLen
	| 'append' '(' ID ',' expr ')'			# SliceAppend	
	| ID '[' expr ']'						# SliceAccess
	| ID '[' expr ']' '[' expr ']'			# MatrixAccess
	| ID									# Identifier
	| '(' expr ')'							# Parens
;

embebidaex: 'fmt.Println' | 'strconv.Atoi' | 'strconv.ParseFloat' | 'reflect.TypeOf' | ID;

call: '(' args? ')';
// call: '(' args? ')' # FuncCall | '.' ID #Get;

tipo : 'int' | 'float64' | 'string' | 'bool' | 'rune' | 'nil' | ID;

INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
BOOL: 'true' | 'false';
ID: [a-zA-Z][a-zA-Z_0-9]*;
DOUBLE: [0-9]+'.'[0-9]+;
STRING: '"' .*? '"';
RUNE: '\'' . '\'';
COMMENT: '//' ~[\r\n]* -> skip;        // Comentarios de una línea
MULTILINE_COMMENT: '/*' .*? '*/' -> skip; // Comentarios de múltiples líneas