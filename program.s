.text
.global _start
_start:
// Variable: a
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Print statement
// Visiting expression
// Variable: a
// Offset: 0
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping expression
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
MOV x0, #0
MOV x8, #93
SVC #0



 // Standard Library

//-------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
// ----------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!   // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!   // Save callee-saved registers
    stp x21, x22, [sp, #-16]! 
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!

    // Check if number is negative
    mov x19, x0                 // Save original number
    cmp x19, #0                 // Compare with zero
    bge positive_number         // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, x1
    adr x1, minus_sign
    mov x2, #1
    mov x8, #64
    svc #0

    neg x19, x19                // Negate the number
positive_number:
    // Prepare buffer or converting result to ascii
    sub sp, sp, #32             // reserve space on stack
    mov x22, sp                 // x22 points to buffer

    // initialize digit counter
    mov x23, #0                 // digit counter
    
    // handle special case for zero
    cmp x19, #0
    bne convert_loop

    // if number is zero, just write '0'
    mov w24, #48                // ascii '0'
    strb w24, [x22, x23]        // store '0' in buffer
    add x23, x23, #1            // increment digit counter
    b print_result              // jump to print number
convert_loop:
    // Divide the number by 10
    mov x24, #10                // divisor
    udiv x25, x19, x24          // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19      // x26 = x19 - (x25 * 10) (remainder)

    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48           // convert to ASCII
    strb w26, [x22, x23]        // store ASCII character in buffer
    add x23, x23, #1            // increment digit counter

    // Prepare for next iteration
    mov x19, x25                // update number
    cbnz x19, convert_loop      // continue if not zero
    
    // Reverse the string in buffer
    mov x27, #0                 // x27 = start index
reverse_loop:
    sub x28, x23, x27           // x28 = length - current index
    sub x28, x28, #1            // x28 = length - current index - 1

    cmp x27, x28                // compare start and end index
    bge print_result            // if start >= end, done

    // Swap characters
    ldrb w24, [x22, x27]        // load character from start
    ldrb w25, [x22, x28]        // load character from end
    strb w25, [x22, x27]        // store end character at start
    strb w24, [x22, x28]        // store start character at end

    add x27, x27, #1            // increment start index
    b reverse_loop              // repeat until all characters are swapped

print_result:
    // Add newline
    mov x24, #10                // ascii newline
    strb w24, [x22, x23]        // store newline in buffer
    add x23, x23, #1            // increment digit counter

    // Print the result
    mov x0, #1                  // fd = 1 stdout
    mov x1, x22                 // buffer
    mov x2, x23                 // length
    mov x8, #64                 // syscall number for write
    svc #0                      // make syscall

    // Restore registers
    add sp, sp, #32             // restore stack pointer
    ldp x27, x28, [sp], #16     // restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16     // restore callee-saved registers
    ldp x29, x30, [sp], #16     // restore frame pointer and link register
    ret

minus_sign:
    .ascii "-"             // ASCII minus sign
            
