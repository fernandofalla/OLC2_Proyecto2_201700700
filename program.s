.data
heap: .space 4096
.text
.global _start
_start:
    ADR x10, heap
// Visiting block
// Variable: puntos
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: === Archivo de prueba básico ===
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #225
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Validaciones manuales esperadas: 4
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: ==== Declaración de variables ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Declaración explícita con tipo y valor
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: entero
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Variable: decimal
// Constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 3.14
// Variable: texto
// Constant: Hola!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Variable: booleano
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Variable: caracter
// Constant: A
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Variable: puntosDeclaracion
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: entero:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: entero
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimal:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimal
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: texto:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: texto
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleano:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleano
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: caracter:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: caracter
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: entero
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L0
MOV x0, #0
STR x0, [SP, #-8]!
B L1
L0:
MOV x0, #1
STR x0, [SP, #-8]!
L1:
// Visiting right
// Relational
// Visiting left
// Variable: decimal
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 3.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16392, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 3.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BGT L2
MOV x0, #0
STR x0, [SP, #-8]!
B L3
L2:
MOV x0, #1
STR x0, [SP, #-8]!
L3:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L5
CMP x1, 1
BEQ L5
MOV x0, #1
B L4
L4:
L5:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: texto
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: Hola!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L6
MOV x0, #0
STR x0, [SP, #-8]!
B L7
L6:
MOV x0, #1
STR x0, [SP, #-8]!
L7:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L9
CMP x1, 1
BEQ L9
MOV x0, #1
B L8
L8:
L9:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleano
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L10
MOV x0, #0
STR x0, [SP, #-8]!
B L11
L10:
MOV x0, #1
STR x0, [SP, #-8]!
L11:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L13
CMP x1, 1
BEQ L13
MOV x0, #1
B L12
L12:
L13:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L14
// Visiting if block
// Visiting block
// Assign
// Variable: puntosDeclaracion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosDeclaracion
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Declaración explícita: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L15
L14:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Declaración explícita: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L15:
// Print statement
// Visiting expression
// Constant: Declaración sin valor
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: enteroSinValor
// Variable without initialization
MOV x0, #0
STR x0, [SP, #-8]!
// Variable: decimalSinValor
// Variable without initialization
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Variable: textoSinValor
// Variable without initialization
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Variable: booleanoSinValor
// Variable without initialization
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: enteroSinValor:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: enteroSinValor
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimalSinValor:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimalSinValor
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: textoSinValor:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: textoSinValor
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleanoSinValor:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleanoSinValor
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: enteroSinValor
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L16
MOV x0, #0
STR x0, [SP, #-8]!
B L17
L16:
MOV x0, #1
STR x0, [SP, #-8]!
L17:
// Visiting right
// Equality
// Visiting left
// Variable: decimalSinValor
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 0.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 0.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L18
MOV x0, #0
STR x0, [SP, #-8]!
B L19
L18:
MOV x0, #1
STR x0, [SP, #-8]!
L19:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L21
CMP x1, 1
BEQ L21
MOV x0, #1
B L20
L20:
L21:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: textoSinValor
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L22
MOV x0, #0
STR x0, [SP, #-8]!
B L23
L22:
MOV x0, #1
STR x0, [SP, #-8]!
L23:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L25
CMP x1, 1
BEQ L25
MOV x0, #1
B L24
L24:
L25:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleanoSinValor
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L26
MOV x0, #0
STR x0, [SP, #-8]!
B L27
L26:
MOV x0, #1
STR x0, [SP, #-8]!
L27:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L29
CMP x1, 1
BEQ L29
MOV x0, #1
B L28
L28:
L29:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L30
// Visiting if block
// Visiting block
// Assign
// Variable: puntosDeclaracion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosDeclaracion
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Declaración sin valor: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L31
L30:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Declaración sin valor: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L31:
// Print statement
// Visiting expression
// Constant: Declaración con inferencia de tipo
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: enteroInferido
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Variable: decimalInferido
// Constant: 2.71
MOVZ X0, #18350, LSL #0
MOVK X0, #31457, LSL #16
MOVK X0, #44564, LSL #32
MOVK X0, #16389, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.71
// Variable: textoInferido
// Constant: Adios!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Variable: booleanoInferido
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: enteroInferido:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: enteroInferido
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimalInferido:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimalInferido
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: textoInferido:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: textoInferido
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleanoInferido:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleanoInferido
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: enteroInferido
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L32
MOV x0, #0
STR x0, [SP, #-8]!
B L33
L32:
MOV x0, #1
STR x0, [SP, #-8]!
L33:
// Visiting right
// Relational
// Visiting left
// Variable: decimalInferido
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2.7
MOVZ X0, #39322, LSL #0
MOVK X0, #39321, LSL #16
MOVK X0, #39321, LSL #32
MOVK X0, #16389, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.7
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BGT L34
MOV x0, #0
STR x0, [SP, #-8]!
B L35
L34:
MOV x0, #1
STR x0, [SP, #-8]!
L35:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L37
CMP x1, 1
BEQ L37
MOV x0, #1
B L36
L36:
L37:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: textoInferido
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: Adios!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L38
MOV x0, #0
STR x0, [SP, #-8]!
B L39
L38:
MOV x0, #1
STR x0, [SP, #-8]!
L39:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L41
CMP x1, 1
BEQ L41
MOV x0, #1
B L40
L40:
L41:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleanoInferido
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L42
MOV x0, #0
STR x0, [SP, #-8]!
B L43
L42:
MOV x0, #1
STR x0, [SP, #-8]!
L43:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L45
CMP x1, 1
BEQ L45
MOV x0, #1
B L44
L44:
L45:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L46
// Visiting if block
// Visiting block
// Assign
// Variable: puntosDeclaracion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosDeclaracion
// Offset: 64
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #64
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Declaración con inferencia: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L47
L46:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Declaración con inferencia: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L47:
// Print statement
// Visiting expression
// Constant: \n==== Asignación de variables ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosAsignacion
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: Asignación con tipo correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: entero
// Visiting expression
// Constant: 99
MOV x0, #99
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #112
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: decimal
// Visiting expression
// Constant: 9.9
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16419, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 9.9
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: texto
// Visiting expression
// Constant: Nuevo
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: booleano
// Visiting expression
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: entero:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: entero
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimal:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimal
// Offset: 104
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: texto:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: texto
// Offset: 96
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleano:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleano
// Offset: 88
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: entero
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 99
MOV x0, #99
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L48
MOV x0, #0
STR x0, [SP, #-8]!
B L49
L48:
MOV x0, #1
STR x0, [SP, #-8]!
L49:
// Visiting right
// Equality
// Visiting left
// Variable: decimal
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 9.9
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16419, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 9.9
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L50
MOV x0, #0
STR x0, [SP, #-8]!
B L51
L50:
MOV x0, #1
STR x0, [SP, #-8]!
L51:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L53
CMP x1, 1
BEQ L53
MOV x0, #1
B L52
L52:
L53:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: texto
// Offset: 104
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: Nuevo
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L54
MOV x0, #0
STR x0, [SP, #-8]!
B L55
L54:
MOV x0, #1
STR x0, [SP, #-8]!
L55:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L57
CMP x1, 1
BEQ L57
MOV x0, #1
B L56
L56:
L57:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleano
// Offset: 96
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L58
MOV x0, #0
STR x0, [SP, #-8]!
B L59
L58:
MOV x0, #1
STR x0, [SP, #-8]!
L59:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L61
CMP x1, 1
BEQ L61
MOV x0, #1
B L60
L60:
L61:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L62
// Visiting if block
// Visiting block
// Assign
// Variable: puntosAsignacion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosAsignacion
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Asignación simple: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L63
L62:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Asignación simple: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L63:
// Print statement
// Visiting expression
// Constant: Asignación con expresiones
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: entero
// Visiting expression
// AddSub
// Visiting left
// Variable: entero
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #112
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: decimal
// Visiting expression
// AddSub
// Visiting left
// Variable: decimal
// Offset: 104
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
SCVTF d0, x0
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: texto
// Visiting expression
// Constant: Nuevo!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Assign
// Variable: booleano
// Visiting expression
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: entero:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: entero
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimal:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimal
// Offset: 104
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: texto:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: texto
// Offset: 96
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleano:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleano
// Offset: 88
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: entero
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L64
MOV x0, #0
STR x0, [SP, #-8]!
B L65
L64:
MOV x0, #1
STR x0, [SP, #-8]!
L65:
// Visiting right
// Equality
// Visiting left
// Variable: decimal
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 19.8
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16435, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 19.8
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L66
MOV x0, #0
STR x0, [SP, #-8]!
B L67
L66:
MOV x0, #1
STR x0, [SP, #-8]!
L67:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L69
CMP x1, 1
BEQ L69
MOV x0, #1
B L68
L68:
L69:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: texto
// Offset: 104
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: Nuevo!
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L70
MOV x0, #0
STR x0, [SP, #-8]!
B L71
L70:
MOV x0, #1
STR x0, [SP, #-8]!
L71:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L73
CMP x1, 1
BEQ L73
MOV x0, #1
B L72
L72:
L73:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleano
// Offset: 96
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L74
MOV x0, #0
STR x0, [SP, #-8]!
B L75
L74:
MOV x0, #1
STR x0, [SP, #-8]!
L75:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L77
CMP x1, 1
BEQ L77
MOV x0, #1
B L76
L76:
L77:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L78
// Visiting if block
// Visiting block
// Assign
// Variable: puntosAsignacion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosAsignacion
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Asignación con expresiones: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L79
L78:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Asignación con expresiones: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L79:
// Print statement
// Visiting expression
// Constant: Asignación con tipo incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntosAsignacion
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosAsignacion
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Asignación con tipo incorrecto: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: \n==== Operaciones Aritméticas ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #233
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosOperacionesAritmeticas
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: Suma
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoSuma1
// AddSub
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Variable: resultadoSuma2
// AddSub
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoSuma3
// AddSub
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoSuma4
// AddSub
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: 10 + 5 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoSuma1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 + 5.5 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoSuma2
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10 + 5.5 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoSuma3
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 + 5 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoSuma4
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoSuma1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 15
MOV x0, #15
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L80
MOV x0, #0
STR x0, [SP, #-8]!
B L81
L80:
MOV x0, #1
STR x0, [SP, #-8]!
L81:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoSuma2
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 16.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16432, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 16.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L82
MOV x0, #0
STR x0, [SP, #-8]!
B L83
L82:
MOV x0, #1
STR x0, [SP, #-8]!
L83:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L85
CMP x1, 1
BEQ L85
MOV x0, #1
B L84
L84:
L85:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoSuma3
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 15.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16431, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 15.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
SCVTF d1, x1
FCMP d1, d0
// Pushing result
BEQ L86
MOV x0, #0
STR x0, [SP, #-8]!
B L87
L86:
MOV x0, #1
STR x0, [SP, #-8]!
L87:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L89
CMP x1, 1
BEQ L89
MOV x0, #1
B L88
L88:
L89:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoSuma4
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 15.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16431, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 15.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L90
MOV x0, #0
STR x0, [SP, #-8]!
B L91
L90:
MOV x0, #1
STR x0, [SP, #-8]!
L91:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L93
CMP x1, 1
BEQ L93
MOV x0, #1
B L92
L92:
L93:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L94
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesAritmeticas
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesAritmeticas
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Suma: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L95
L94:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Suma: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L95:
// Print statement
// Visiting expression
// Constant: Multiplicación
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoMult1
// AddSub
// Visiting left
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Visiting right
// Constant: 3
MOV x0, #3
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
MUL x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Variable: resultadoMult2
// AddSub
// Visiting left
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Visiting right
// Constant: 2.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16384, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoMult3
// AddSub
// Visiting left
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
SCVTF d1, x1
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoMult4
// AddSub
// Visiting left
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Visiting right
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
SCVTF d0, x0
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: 5 * 3 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoMult1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 5.5 * 2.0 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoMult2
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 5 * 2.5 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoMult3
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 5.5 * 2 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoMult4
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoMult1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 15
MOV x0, #15
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L96
MOV x0, #0
STR x0, [SP, #-8]!
B L97
L96:
MOV x0, #1
STR x0, [SP, #-8]!
L97:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoMult2
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 11.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16422, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 11.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L98
MOV x0, #0
STR x0, [SP, #-8]!
B L99
L98:
MOV x0, #1
STR x0, [SP, #-8]!
L99:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L101
CMP x1, 1
BEQ L101
MOV x0, #1
B L100
L100:
L101:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoMult3
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 12.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16425, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 12.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L102
MOV x0, #0
STR x0, [SP, #-8]!
B L103
L102:
MOV x0, #1
STR x0, [SP, #-8]!
L103:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L105
CMP x1, 1
BEQ L105
MOV x0, #1
B L104
L104:
L105:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoMult4
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 11.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16422, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 11.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L106
MOV x0, #0
STR x0, [SP, #-8]!
B L107
L106:
MOV x0, #1
STR x0, [SP, #-8]!
L107:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L109
CMP x1, 1
BEQ L109
MOV x0, #1
B L108
L108:
L109:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L110
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesAritmeticas
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesAritmeticas
// Offset: 64
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #64
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Multiplicación: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L111
L110:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Multiplicación: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L111:
// Print statement
// Visiting expression
// Constant: División
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoDiv1
// AddSub
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
SDIV x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Variable: resultadoDiv2
// AddSub
// Visiting left
// Constant: 10.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16420, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.0
// Visiting right
// Constant: 4.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16400, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 4.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoDiv3
// AddSub
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 4.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16400, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 4.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
SCVTF d1, x1
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Variable: resultadoDiv4
// AddSub
// Visiting left
// Constant: 10.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16420, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.0
// Visiting right
// Constant: 4
MOV x0, #4
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
SCVTF d0, x0
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: 10 / 2 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoDiv1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.0 / 4.0 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoDiv2
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10 / 4.0 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoDiv3
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.0 / 4 =
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoDiv4
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoDiv1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L112
MOV x0, #0
STR x0, [SP, #-8]!
B L113
L112:
MOV x0, #1
STR x0, [SP, #-8]!
L113:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoDiv2
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L114
MOV x0, #0
STR x0, [SP, #-8]!
B L115
L114:
MOV x0, #1
STR x0, [SP, #-8]!
L115:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L117
CMP x1, 1
BEQ L117
MOV x0, #1
B L116
L116:
L117:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoDiv3
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L118
MOV x0, #0
STR x0, [SP, #-8]!
B L119
L118:
MOV x0, #1
STR x0, [SP, #-8]!
L119:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L121
CMP x1, 1
BEQ L121
MOV x0, #1
B L120
L120:
L121:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoDiv4
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 2.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L122
MOV x0, #0
STR x0, [SP, #-8]!
B L123
L122:
MOV x0, #1
STR x0, [SP, #-8]!
L123:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L125
CMP x1, 1
BEQ L125
MOV x0, #1
B L124
L124:
L125:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L126
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesAritmeticas
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesAritmeticas
// Offset: 96
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK División: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L127
L126:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X División: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L127:
// Print statement
// Visiting expression
// Constant: \n==== Operaciones Relacionales ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosOperacionesRelacionales
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: Igualdad
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoIgualdad1
// Equality
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L128
MOV x0, #0
STR x0, [SP, #-8]!
B L129
L128:
MOV x0, #1
STR x0, [SP, #-8]!
L129:
// Variable: resultadoIgualdad2
// Equality
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L130
MOV x0, #0
STR x0, [SP, #-8]!
B L131
L130:
MOV x0, #1
STR x0, [SP, #-8]!
L131:
// Variable: resultadoIgualdad3
// Equality
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L132
MOV x0, #0
STR x0, [SP, #-8]!
B L133
L132:
MOV x0, #1
STR x0, [SP, #-8]!
L133:
// Variable: resultadoIgualdad4
// Equality
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L134
MOV x0, #0
STR x0, [SP, #-8]!
B L135
L134:
MOV x0, #1
STR x0, [SP, #-8]!
L135:
// Variable: resultadoIgualdad5
// Equality
// Visiting left
// Constant: Hola
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Visiting right
// Constant: Hola
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L136
MOV x0, #0
STR x0, [SP, #-8]!
B L137
L136:
MOV x0, #1
STR x0, [SP, #-8]!
L137:
// Variable: resultadoIgualdad6
// Equality
// Visiting left
// Constant: Hola
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Visiting right
// Constant: Mundo
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L138
MOV x0, #0
STR x0, [SP, #-8]!
B L139
L138:
MOV x0, #1
STR x0, [SP, #-8]!
L139:
// Print statement
// Visiting expression
// Constant: 10 == 10:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad1
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10 == 5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad2
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 == 10.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad3
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 == 5.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad4
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Hola == Hola:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad5
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Hola == Mundo:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoIgualdad6
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoIgualdad1
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L140
MOV x0, #0
STR x0, [SP, #-8]!
B L141
L140:
MOV x0, #1
STR x0, [SP, #-8]!
L141:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoIgualdad2
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L142
MOV x0, #0
STR x0, [SP, #-8]!
B L143
L142:
MOV x0, #1
STR x0, [SP, #-8]!
L143:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L145
CMP x1, 1
BEQ L145
MOV x0, #1
B L144
L144:
L145:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoIgualdad3
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L146
MOV x0, #0
STR x0, [SP, #-8]!
B L147
L146:
MOV x0, #1
STR x0, [SP, #-8]!
L147:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L149
CMP x1, 1
BEQ L149
MOV x0, #1
B L148
L148:
L149:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoIgualdad4
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L150
MOV x0, #0
STR x0, [SP, #-8]!
B L151
L150:
MOV x0, #1
STR x0, [SP, #-8]!
L151:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L153
CMP x1, 1
BEQ L153
MOV x0, #1
B L152
L152:
L153:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoIgualdad5
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L154
MOV x0, #0
STR x0, [SP, #-8]!
B L155
L154:
MOV x0, #1
STR x0, [SP, #-8]!
L155:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L157
CMP x1, 1
BEQ L157
MOV x0, #1
B L156
L156:
L157:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoIgualdad6
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L158
MOV x0, #0
STR x0, [SP, #-8]!
B L159
L158:
MOV x0, #1
STR x0, [SP, #-8]!
L159:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L161
CMP x1, 1
BEQ L161
MOV x0, #1
B L160
L160:
L161:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L162
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesRelacionales
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesRelacionales
// Offset: 48
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Igualdad: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L163
L162:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Igualdad: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L163:
// Print statement
// Visiting expression
// Constant: Mayor/Menor
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoComp1
// Relational
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
BGT L164
MOV x0, #0
STR x0, [SP, #-8]!
B L165
L164:
MOV x0, #1
STR x0, [SP, #-8]!
L165:
// Variable: resultadoComp2
// Relational
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
BLT L166
MOV x0, #0
STR x0, [SP, #-8]!
B L167
L166:
MOV x0, #1
STR x0, [SP, #-8]!
L167:
// Variable: resultadoComp3
// Relational
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BGT L168
MOV x0, #0
STR x0, [SP, #-8]!
B L169
L168:
MOV x0, #1
STR x0, [SP, #-8]!
L169:
// Variable: resultadoComp4
// Relational
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BLT L170
MOV x0, #0
STR x0, [SP, #-8]!
B L171
L170:
MOV x0, #1
STR x0, [SP, #-8]!
L171:
// Print statement
// Visiting expression
// Constant: 10 > 5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10 < 5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp2
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 > 5.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp3
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 < 5.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp4
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoComp1
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L172
MOV x0, #0
STR x0, [SP, #-8]!
B L173
L172:
MOV x0, #1
STR x0, [SP, #-8]!
L173:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp2
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L174
MOV x0, #0
STR x0, [SP, #-8]!
B L175
L174:
MOV x0, #1
STR x0, [SP, #-8]!
L175:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L177
CMP x1, 1
BEQ L177
MOV x0, #1
B L176
L176:
L177:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp3
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L178
MOV x0, #0
STR x0, [SP, #-8]!
B L179
L178:
MOV x0, #1
STR x0, [SP, #-8]!
L179:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L181
CMP x1, 1
BEQ L181
MOV x0, #1
B L180
L180:
L181:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp4
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L182
MOV x0, #0
STR x0, [SP, #-8]!
B L183
L182:
MOV x0, #1
STR x0, [SP, #-8]!
L183:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L185
CMP x1, 1
BEQ L185
MOV x0, #1
B L184
L184:
L185:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L186
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesRelacionales
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesRelacionales
// Offset: 80
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #80
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Mayor/Menor: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L187
L186:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Mayor/Menor: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L187:
// Print statement
// Visiting expression
// Constant: Mayor o igual/Menor o igual
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: resultadoComp5
// Relational
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
BGE L188
MOV x0, #0
STR x0, [SP, #-8]!
B L189
L188:
MOV x0, #1
STR x0, [SP, #-8]!
L189:
// Variable: resultadoComp6
// Relational
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
BLE L190
MOV x0, #0
STR x0, [SP, #-8]!
B L191
L190:
MOV x0, #1
STR x0, [SP, #-8]!
L191:
// Variable: resultadoComp7
// Relational
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 5.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BGE L192
MOV x0, #0
STR x0, [SP, #-8]!
B L193
L192:
MOV x0, #1
STR x0, [SP, #-8]!
L193:
// Variable: resultadoComp8
// Relational
// Visiting left
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Visiting right
// Constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 10.5
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BLE L194
MOV x0, #0
STR x0, [SP, #-8]!
B L195
L194:
MOV x0, #1
STR x0, [SP, #-8]!
L195:
// Print statement
// Visiting expression
// Constant: 10 >= 10:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp5
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10 <= 5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp6
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 >= 5.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp7
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 10.5 <= 10.5:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: resultadoComp8
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: resultadoComp5
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L196
MOV x0, #0
STR x0, [SP, #-8]!
B L197
L196:
MOV x0, #1
STR x0, [SP, #-8]!
L197:
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp6
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L198
MOV x0, #0
STR x0, [SP, #-8]!
B L199
L198:
MOV x0, #1
STR x0, [SP, #-8]!
L199:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L201
CMP x1, 1
BEQ L201
MOV x0, #1
B L200
L200:
L201:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp7
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L202
MOV x0, #0
STR x0, [SP, #-8]!
B L203
L202:
MOV x0, #1
STR x0, [SP, #-8]!
L203:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L205
CMP x1, 1
BEQ L205
MOV x0, #1
B L204
L204:
L205:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: resultadoComp8
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L206
MOV x0, #0
STR x0, [SP, #-8]!
B L207
L206:
MOV x0, #1
STR x0, [SP, #-8]!
L207:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L209
CMP x1, 1
BEQ L209
MOV x0, #1
B L208
L208:
L209:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L210
// Visiting if block
// Visiting block
// Assign
// Variable: puntosOperacionesRelacionales
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosOperacionesRelacionales
// Offset: 112
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #112
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Mayor o igual/Menor o igual: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L211
L210:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Mayor o igual/Menor o igual: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L211:
// Print statement
// Visiting expression
// Constant: \n==== Operaciones Lógicas ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosOperacionesLogicas
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: \n==== fmt.Println ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosPrintln
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Impresión de valores simples
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 3.14
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Texto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: A
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntosPrintln
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosPrintln
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Impresión de valores simples: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Impresión de múltiples valores
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Números:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 3.14
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Booleano:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Texto:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Hola
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntosPrintln
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosPrintln
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Impresión de múltiples valores: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Impresión de expresiones
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Suma:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// AddSub
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Comparación:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Relational
// Visiting left
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
BGT L212
MOV x0, #0
STR x0, [SP, #-8]!
B L213
L212:
MOV x0, #1
STR x0, [SP, #-8]!
L213:
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: Lógica:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Logical
// Visiting left
// Constant: True
MOV x0, #1
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L215
CMP x1, 1
BEQ L215
MOV x0, #1
B L214
L214:
L215:
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntosPrintln
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosPrintln
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Impresión de expresiones: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: \n==== Manejo de valor nulo ====
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: puntosValorNulo
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: Valores por defecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Variable: enteroNulo
// Variable without initialization
MOV x0, #0
STR x0, [SP, #-8]!
// Variable: decimalNulo
// Variable without initialization
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Variable: textoNulo
// Variable without initialization
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Variable: booleanoNulo
// Variable without initialization
MOV x0, #0
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: enteroNulo:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: enteroNulo
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: decimalNulo:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: decimalNulo
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR d0, [SP], #8
BL print_double
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: textoNulo:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: textoNulo
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: booleanoNulo:
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: booleanoNulo
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_boolean
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// If statement
// Logical
// Visiting left
// Logical
// Visiting left
// Logical
// Visiting left
// Equality
// Visiting left
// Variable: enteroNulo
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L216
MOV x0, #0
STR x0, [SP, #-8]!
B L217
L216:
MOV x0, #1
STR x0, [SP, #-8]!
L217:
// Visiting right
// Equality
// Visiting left
// Variable: decimalNulo
// Offset: 24
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 0.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing float constant: 0.0
// Popping operands
// Popping object from stack
LDR d0, [SP], #8
// Popping object from stack
LDR d1, [SP], #8
FCMP d1, d0
// Pushing result
BEQ L218
MOV x0, #0
STR x0, [SP, #-8]!
B L219
L218:
MOV x0, #1
STR x0, [SP, #-8]!
L219:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L221
CMP x1, 1
BEQ L221
MOV x0, #1
B L220
L220:
L221:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: textoNulo
// Offset: 16
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L222
MOV x0, #0
STR x0, [SP, #-8]!
B L223
L222:
MOV x0, #1
STR x0, [SP, #-8]!
L223:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L225
CMP x1, 1
BEQ L225
MOV x0, #1
B L224
L224:
L225:
STR x0, [SP, #-8]!
// Visiting right
// Equality
// Visiting left
// Variable: booleanoNulo
// Offset: 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: False
MOV x0, #0
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x1, x0
// Pushing result
BEQ L226
MOV x0, #0
STR x0, [SP, #-8]!
B L227
L226:
MOV x0, #1
STR x0, [SP, #-8]!
L227:
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
CMP x0, 0
BEQ L229
CMP x1, 1
BEQ L229
MOV x0, #1
B L228
L228:
L229:
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
CBZ x0, L230
// Visiting if block
// Visiting block
// Assign
// Variable: puntosValorNulo
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosValorNulo
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Valores por defecto: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
B L231
L230:
// Visiting else block
// Visiting block
// Print statement
// Visiting expression
// Constant: X Valores por defecto: incorrecto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
L231:
// Print statement
// Visiting expression
// Constant: Operaciones con nil
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntosValorNulo
// Visiting expression
// AddSub
// Visiting left
// Variable: puntosValorNulo
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: OK Operaciones con nil: correcto
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Assign
// Variable: puntos
// Visiting expression
// AddSub
// Visiting left
// AddSub
// Visiting left
// AddSub
// Visiting left
// AddSub
// Visiting left
// AddSub
// Visiting left
// AddSub
// Visiting left
// Variable: puntosDeclaracion
// Offset: 352
MOV x0, #352
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosAsignacion
// Offset: 288
MOV x0, #288
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosOperacionesAritmeticas
// Offset: 280
MOV x0, #280
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosOperacionesRelacionales
// Offset: 176
MOV x0, #176
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosOperacionesLogicas
// Offset: 56
MOV x0, #56
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosPrintln
// Offset: 48
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Visiting right
// Variable: puntosValorNulo
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
// Popping object from stack
LDR x0, [SP], #8
// Popping object from stack
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping object from stack
LDR x0, [SP], #8
MOV x1, #400
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
// Print statement
// Visiting expression
// Constant: \n=== Tabla de Resultados ===
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #92
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Característica           | Puntos | Total |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Declaración de variables | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosDeclaracion
// Offset: 352
MOV x0, #352
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Asignación de variables  | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosAsignacion
// Offset: 280
MOV x0, #280
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Operaciones Aritméticas  | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #233
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosOperacionesAritmeticas
// Offset: 272
MOV x0, #272
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Operaciones Relacionales | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosOperacionesRelacionales
// Offset: 168
MOV x0, #168
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Operaciones Lógicas      | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosOperacionesLogicas
// Offset: 48
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | fmt.Println              | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosPrintln
// Offset: 40
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | Manejo de valor nulo     | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntosValorNulo
// Offset: 32
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:     | 2     |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: | TOTAL                    | 
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Variable: puntos
// Offset: 400
MOV x0, #400
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant:    | 20    |
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Print statement
// Visiting expression
// Constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing string array (chars) to heap
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping expression
// Popping object from stack
LDR x0, [SP], #8
MOV X0, x0
BL print_string
MOV X0, #1
ADR X1, newline_char
MOV X2, #1
MOV X8, #64
SVC #0
// Removing 408 bytes from stack
MOV x0, #408
ADD sp, sp, x0
// New stack pointer: 
MOV x0, #0
MOV x8, #93
SVC #0



 // Functions



 // Standard Library

//--------------------------------------------------------------
// print_string - Prints a null-terminated string to stdout
//
// Input:
//   x0 - The address of the null-terminated string to print
//--------------------------------------------------------------
print_string:
    // Save link register and other registers we'll use
    stp     x29, x30, [sp, #-16]!
    stp     x19, x20, [sp, #-16]!
    
    // x19 will hold the string address
    mov     x19, x0
    
print_loop:
    // Load a byte from the string
    ldrb    w20, [x19]
    
    // Check if it's the null terminator (0)
    cbz     w20, print_done
    
    // Prepare for write syscall
    mov     x0, #1              // File descriptor: 1 for stdout
    mov     x1, x19             // Address of the character to print
    mov     x2, #1              // Length: 1 byte
    mov     x8, #64             // syscall: write (64 on ARM64)
    svc     #0                  // Make the syscall
    
    // Move to the next character
    add     x19, x19, #1
    
    // Continue the loop
    b       print_loop
    
print_done:
    // Restore saved registers
    ldp     x19, x20, [sp], #16
    ldp     x29, x30, [sp], #16

    ret
    // Return to the caller
    

//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0                // Save original number
    cmp x19, #0                // Compare with zero
    bge positive_number        // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, minus_sign         // Address of minus sign
    mov x2, #1                 // Length = 1
    mov w8, #64                // Syscall write
    svc #0
    
    neg x19, x19               // Make number positive
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32            // Reserve space on stack
    mov x22, sp                // x22 points to buffer
    
    // Initialize digit counter
    mov x23, #0                // Digit counter
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48               // ASCII '0'
    strb w24, [x22, x23]       // Store in buffer
    add x23, x23, #1           // Increment counter
    b print_result             // Skip conversion loop
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24         // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19    // x26 = x19 - (x25 * 10) (remainder)
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48          // Convert to ASCII ('0' = 48)
    strb w26, [x22, x23]       // Store digit in buffer
    add x23, x23, #1           // Increment digit counter
    
    // Prepare for next iteration
    mov x19, x25               // Quotient becomes the new number
    cbnz x19, convert_loop     // If number is not zero, continue
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0                // Start index
reverse_loop:
    sub x28, x23, x27          // x28 = length - current index
    sub x28, x28, #1           // x28 = length - current index - 1
    
    cmp x27, x28               // Compare indices
    bge print_result           // If crossed, finish reversing
    
    // Swap characters
    ldrb w24, [x22, x27]       // Load character from start
    ldrb w25, [x22, x28]       // Load character from end
    strb w25, [x22, x27]       // Store end character at start
    strb w24, [x22, x28]       // Store start character at end
    
    add x27, x27, #1           // Increment start index
    b reverse_loop             // Continue reversing
    
print_result:
    // Print the result
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x22                // Buffer address
    mov x2, x23                // Buffer length
    mov w8, #64                // Syscall write
    svc #0
    
    // Clean up and restore registers
    add sp, sp, #32            // Free buffer space
    ldp x27, x28, [sp], #16    // Restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register

    ret                        // Return to caller
    

//--------------------------------------------------------------
// print_double - Prints a double precision float to stdout
//
// Input:
//   d0 - The double value to print
//--------------------------------------------------------------
print_double:
    // Save context
    stp x29, x30, [sp, #-16]!    
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    
    // Check if number is negative
    fmov x19, d0
    tst x19, #(1 << 63)       // Comprueba el bit de signo
    beq skip_minus

    // Print minus sign
    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov x8, #64
    svc #0

    // Make value positive
    fneg d0, d0

skip_minus:
    // Convert integer part
    fcvtzs x0, d0             // x0 = int(d0)
    bl print_integer

    // Print dot '.'
    mov x0, #1
    adr x1, dot_char
    mov x2, #1
    mov x8, #64
    svc #0

    // Get fractional part: frac = d0 - float(int(d0))
    frintm d4, d0             // d4 = floor(d0)
    fsub d2, d0, d4           // d2 = d0 - floor(d0) (exact fraction)

    // Para 2.5, d2 debe ser exactamente 0.5

    // Multiplicar por 1_000_000 (6 decimales)
    movz x1, #0x000F, lsl #16
    movk x1, #0x4240, lsl #0   // x1 = 1000000
    scvtf d3, x1              // d3 = 1000000.0
    fmul d2, d2, d3           // d2 = frac * 1_000_000
    
    // Redondear al entero más cercano para evitar errores de precisión
    frintn d2, d2             // d2 = round(d2)
    fcvtzs x0, d2             // x0 = int(d2)

    // Imprimir ceros a la izquierda si es necesario
    mov x20, x0               // x20 = fracción entera
    movz x21, #0x0001, lsl #16
    movk x21, #0x86A0, lsl #0  // x21 = 100000
    mov x22, #0               // inicializar contador de ceros
    mov x23, #10              // constante para división

leading_zero_loop:
    udiv x24, x20, x21        // x24 = x20 / x21
    cbnz x24, done_leading_zeros  // Si hay un dígito no cero, salir del bucle

    // Imprimir '0'
    mov x0, #1
    adr x1, zero_char
    mov x2, #1
    mov x8, #64
    svc #0

    udiv x21, x21, x23        // x21 /= 10
    add x22, x22, #1          // incrementar contador de ceros
    cmp x21, #0               // verificar si llegamos al final
    beq print_remaining       // si divisor es 0, saltar a imprimir el resto
    b leading_zero_loop

done_leading_zeros:
    // Print the remaining fractional part
    mov x0, x20
    bl print_integer
    b exit_function

print_remaining:
    // Caso especial cuando la parte fraccionaria es 0 después de imprimir ceros
    cmp x20, #0
    bne exit_function
    
    // Ya imprimimos todos los ceros necesarios
    // No hace falta imprimir nada más

exit_function:
    // Restore context
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16

    ret
    

print_boolean:
    stp x29, x30, [sp, #-16]!
    cmp x0, #0
    beq false_label
    // Print 'true'
    adr x1, true_str
    mov x2, #4
    b print_end
false_label:
    // Print 'false'
    adr x1, false_str
    mov x2, #5
print_end:
    mov x0, #1
    mov x8, #64
    svc #0
    ldp x29, x30, [sp], #16

    ret
newline_char: .ascii "\n"
minus_sign: .ascii "-"
dot_char: .ascii "."
zero_char: .ascii "0"
true_str: .ascii "true"
false_str: .ascii "false"
