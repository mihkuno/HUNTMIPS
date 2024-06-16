.data
  
    .eqv ROWS  16
    .eqv COLS  64
    .eqv SIZE  4
    .eqv W 119
    .eqv A 97
    .eqv S 115
    .eqv D 100

    # added backslash to show backslash characters                                              
    gameOverText1: .asciiz "  __ _  __ _  _ __   ___   ___ __ __ ___  _ _      \n"
    gameOverText2: .asciiz " / _` |/ _` || '  \\ / -_) / _ \\\\ V // -_)| '_|  \n"
    gameOverText3: .asciiz " \\__, |\\__,_||_|_|_|\\___| \\___/ \\_/ \\___||_| \n"
    gameOverText4: .asciiz " |___/                                             \n"
    
    winnerText1: .asciiz "                            _        _       \n"
    winnerText2: .asciiz "  _  _  ___  _  _  __ __ __(_) _ _  | |      \n"
    winnerText3: .asciiz " | || |/ _ \\| || | \\ V  V /| || ' \\ |_|   \n"
    winnerText4: .asciiz "  \\_, |\\___/ \\_,_|  \\_/\\_/ |_||_||_|(_) \n"
    winnerText5: .asciiz "  |__/                                       \n"

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
    move $s6, $zero        # render state

    li $s0, ROWS           # load num rows
    li $s1, COLS           # load num columns
    li $s2, SIZE           # load size of each element

    mul $s3, $s0, $s1      # $s3 = ROWS * COLS (total number of elements)
    mul $s3, $s3, $s2      # $s3 = $s3 * SIZE (total number of bytes)

    # set player position
    lw $s5, easyRow
    lw $s4, easyCol 

    jal _winner 
    j _exit
    # j _render

    
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
    



_moveUp:
    # arguments
    # $s4 player col
    # $s5 player row
    
    # validation
    # check if next step is out of bounds
    subi $t4, $s5, 1
    blez $t4, _render
    #
    # check if next step is not a space
    addi $a0, $zero, -1 # player row - 1
    addi $a1, $zero,  0 # player col + 0
    jal _getElement
    bnez $v1, _render

    # movement
    subi $s5, $s5, 1 # move one step up
    j _render  # Render current level

_moveDown:
    # arguments
    # $s4 player col
    # $s5 player row
    
    # validation
    # check if next step is out of bounds
    addi $t4, $s5, 1
    blez $t4, _render
    #
    # check if next step is not a space
    addi $a0, $zero,  1 # player row + 1
    addi $a1, $zero,  0 # player col + 0
    jal _getElement
    bnez $v1, _render

    # movement
    addi $s5, $s5, 1 # move 1 step down
    j _render  # Render current level

_moveLeft:
    # validation
    # check if next step is out of bounds
    subi $t4, $s4, 1
    blez $t4, _render
    # check if second step is out of bounds
    subi $t4, $s4, 2
    blez $t4, _render
    #
    # check if next step is not a space
    subi $a0, $zero,  0 # player row + 0
    subi $a1, $zero,  1 # player col + 1
    jal _getElement
    bnez $v1, _render
    #
    # check if second step is not a space
    subi $a0, $zero,  0 # player row + 0
    subi $a1, $zero,  2 # player col + 2
    jal _getElement
    bnez $v1, _render
    
    subi $s4, $s4, 2 # move 2 steps left
    j _render  # Render current level


_moveRight:
    # arguments
    # $s4 player col
    # $s5 player row
    
    # validation
    # check if next step is out of bounds
    addi $t4, $s4, 1
    blez $t4, _render
    # check if second step is out of bounds
    addi $t4, $s4, 2
    blez $t4, _render
    #
    # check if next step is not a space
    addi $a0, $zero,  0 # player row + 0
    addi $a1, $zero,  1 # player col + 1
    jal _getElement
    bnez $v1, _render
    #
    # check if second step is not a space
    addi $a0, $zero,  0 # player row + 0
    addi $a1, $zero,  2 # player col + 2
    jal _getElement
    bnez $v1, _render

    # movement
    addi $s4, $s4, 2 # move 2 steps right
    j _render  # Render current level

   
_render:
    beq $t0, $s3, _printCurrentElement
    lw $t3, easyLevel($t0)
    addi $t0, $t0, 4

    jal _drawEntity

    addi $t1, $t1, 1       # increment col counter
    beq $t1, $s1, _newline

    j _render


_getElement: 
    # arguments: 
    # a0= player row Offset
    # a1= player col Offset
    # $s4 player column
    # $s5 player row
    # $s1 number of columns
    # $s2 data size
    
    add $a0, $a0, $s5
    add $a1, $a1, $s4
    
    # player row x number of columns
    mul $v1, $a0, $s1
    # + player column
    add $v1, $v1, $a1
    # x data size
    mul $v1, $v1, $s2
    
    # get current element from array
    lw $v1, easyLevel($v1)
    
    jr $ra
    


_printCurrentElement:         
    addi $a0, $zero, 0
    addi $a1, $zero, 0
    jal _getElement

    li $v0, 1
    move $a0, $v1
    syscall
    
    j _loop
    

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

_gameOver:
    # Print gameOverText1
    la $a0, gameOverText1   # Load address of gameOverText1 into $a0
    li $v0, 4               # System call code for print string
    syscall                 # Make the system call

    # Print gameOverText2
    la $a0, gameOverText2   # Load address of gameOverText2 into $a0
    li $v0, 4               # System call code for print string
    syscall                 # Make the system call

    # Print gameOverText3
    la $a0, gameOverText3   # Load address of gameOverText3 into $a0
    li $v0, 4               # System call code for print string
    syscall                 # Make the system call

    # Print gameOverText4
    la $a0, gameOverText4   # Load address of gameOverText4 into $a0
    li $v0, 4               # System call code for print string
    syscall                 # Make the system call

    jr $ra
    
    
_winner:
    # Print winnerText1
    la $a0, winnerText1   
    li $v0, 4               
    syscall                 

    # Print winnerText2
    la $a0, winnerText2   
    li $v0, 4               
    syscall                 

    # Print winnerText3
    la $a0, winnerText3   
    li $v0, 4               
    syscall                 

    # Print winnerText4
    la $a0, winnerText4   
    li $v0, 4               
    syscall                 
    
    # Print winnerText5
    la $a0, winnerText5   
    li $v0, 4               
    syscall                 

    jr $ra
    
