.data
array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9  # The 3x3 array elements
rows: .word 3  # Number of rows
cols: .word 3  # Number of columns

.text
.globl main

main:
    la   $t0, rows       # Load address of rows
    lw   $t1, 0($t0)     # Load number of rows into $t1
    la   $t0, cols       # Load address of cols
    lw   $t2, 0($t0)     # Load number of columns into $t2

    la   $t3, array      # Load base address of array into $t3

    li   $t4, 0          # Initialize row index i = 0

row_loop:
    bge  $t4, $t1, end   # If i >= rows, exit loop

    li   $t5, 0          # Initialize column index j = 0

col_loop:
    bge  $t5, $t2, next_row  # If j >= cols, go to next row

    # Calculate the offset: (i * cols + j) * 4
    mul  $t6, $t4, $t2       # t6 = i * cols
    add  $t6, $t6, $t5       # t6 = i * cols + j
    sll  $t6, $t6, 2         # t6 = (i * cols + j) * 4 (each word is 4 bytes)

    # Load the array element
    lw   $t7, 0($t3)         # Load base address of array into $t7
    add  $t7, $t7, $t6       # Add offset to base address
    lw   $a0, 0($t7)         # Load the array element into $a0

    # Print the array element
    li   $v0, 1              # syscall for print_int
    syscall

    # Print a space
    li   $a0, ' '
    li   $v0, 11             # syscall for print_char
    syscall

    # Increment column index j
    addi $t5, $t5, 1
    j    col_loop

next_row:
    # Print a newline
    li   $a0, '\n'
    li   $v0, 11             # syscall for print_char
    syscall

    # Increment row index i
    addi $t4, $t4, 1
    j    row_loop

end:
    li   $v0, 10             # syscall for exit
    syscall
