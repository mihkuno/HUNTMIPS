.data
  
    .eqv ROWS  16
    .eqv COLS  64
    .eqv SIZE  4
    .eqv W 119
    .eqv A 97
    .eqv S 115
    .eqv D 100

    clearChar:    .asciiz "\n\n"
    lineChar:     .asciiz "\n"
    spaceChar:    .asciiz " "
    enemyChar:    .asciiz "ø"    
    wallChar:     .asciiz ":"
    playerChar:   .asciiz "o"
    treasureChar: .asciiz "x"

    easyCol: .word 4
    easyRow: .word 2
    easyLevel:  .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
                .word 1,1,0,0,0,0,0,4,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,1,1
                .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
                .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

 
.text
main:
    move $s0, $zero        # num of rows
    move $s1, $zero        # num of cols
    move $s2, $zero        # size of each element
    move $s3, $zero        # total size allocation
    move $s4, $zero        # current col position
    move $s5, $zero        # current row position

    li $s0, ROWS           # load num rows
    li $s1, COLS           # load num columns
    li $s2, SIZE           # load size of each element

    mul $s3, $s0, $s1      # $s3 = ROWS * COLS (total number of elements)
    mul $s3, $s3, $s2      # $s3 = $s3 * SIZE (total number of bytes)

    # set player position
    lw $s4, easyCol
    lw $s5, easyRow

    j _loop

    
_loop:

    # Read a character from input
    li $v0, 12          # syscall code for reading a character
    syscall

    # Store the character in $t0
    move $t9, $v0

     # Clear the console
    jal _clear
    
    # Reset registers
    move $t0, $zero        # byte offset for array elements 
    move $t1, $zero        # col element counter
    move $t2, $zero        # row element counter
    
    beq $t9, W, _moveUp
    beq $t9, A, _moveLeft
    beq $t9, S, _moveDown
    beq $t9, D, _moveRight
    
    j _loop    # Continue the loop to read the next character
    
    
_reset:
    # Reset the registers to zero
    move $t0, $zero        # byte offset for array elements 
    move $t1, $zero        # col element counter
    move $t2, $zero        # row element counter
    j _loop

_moveUp:
    # validation
    subi $s7, $s5, 1       # new row index - 1 
    bltz $s7, _loop        # check if new position is out of bounds (top)
    mul $s7, $s7, $s1      # newRow * numCols 
    add $s7, $s7, $s4      # newRow * numCols + col index
    mul $s7, $s7, $s2      # newRow * numCols + col index * data size
    
    lw $s6, easyLevel($s7) # load new position value
    
    bnez $t6, _loop        # if not a space, ignore the move
    
    # movement
    subi $s5, $s5, 1
    j _render  # Render current level

_moveDown:
    addi $s5, $s5, 1
    j _render  # Render current level

_moveLeft:
    subi $s4, $s4, 1
    j _render  # Render current level


_moveRight:
    addi $s4, $s4, 1
    j _render  # Render current level

   
_render:
    beq $t0, $s3, _loop
    lw $t3, easyLevel($t0)
    addi $t0, $t0, 4

    jal _drawEntity

    addi $t1, $t1, 1       # increment col counter
    beq $t1, $s1, _newline

    j _render
    
_newline:
    li $v0, 4
    la $a0, lineChar
    syscall

    move $t1, $zero        # reset col counter
    addi $t2, $t2, 1       # increment row counter
    j _render

_drawEntity:
    # Check if current position is player's position
    seq $t4, $t1, $s4      # iterCol == playerCol
    seq $t5, $t2, $s5      # iterRow == playerRow
    and $t6, $t4, $t5      # both conditions true

    beq $t6, $zero, _drawHardEntity # If not player's position, draw entity
    li $v0, 4
    la $a0, playerChar
    syscall
    jr $ra

_drawHardEntity:
    beq $t3, 0, _drawSpace
    beq $t3, 1, _drawWall
    beq $t3, 2, _drawTreasure
    beq $t3, 4, _drawEnemy
    jr $ra

_drawSpace:
    li $v0, 4
    la $a0, spaceChar
    syscall
    jr $ra
    
_drawWall:
    li $v0, 4
    la $a0, wallChar
    syscall
    jr $ra

_drawTreasure:
    li $v0, 4
    la $a0, treasureChar
    syscall
    jr $ra

_drawEnemy:
    li $v0, 4
    la $a0, enemyChar
    syscall
    jr $ra

_clear:
    li $v0, 4
    la $a0, clearChar
    syscall
    jr $ra

_exit:
    li $v0, 10
    syscall
