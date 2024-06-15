# MIPS program to continuously echo characters typed by the user

.data
    newLine: .asciiz "\n"


.text
main:
    # Infinite loop to act as a keypress event listener
loop:
    # Read a character from input
    li $v0, 12          # syscall code for reading a character
    syscall
    
    # Store the character in $t0
    move $t0, $v0

    
    li $v0, 4
	la $a0, newLine
 	syscall

    # Echo the character (print it out)
    li $v0, 11          # syscall code for printing a character
    move $a0, $t0
    syscall

    li $v0, 4
	la $a0, newLine
 	syscall

    # Continue the loop to read the next character
    j loop
