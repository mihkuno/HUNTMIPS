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
    
    winnerText1:   .asciiz "                            _        _       \n"
    winnerText2:   .asciiz "  _  _  ___  _  _  __ __ __(_) _ _  | |      \n"
    winnerText3:   .asciiz " | || |/ _ \\| || | \\ V  V /| || ' \\ |_|   \n"
    winnerText4:   .asciiz "  \\_, |\\___/ \\_,_|  \\_/\\_/ |_||_||_|(_) \n"
    winnerText5:   .asciiz "  |__/                                       \n"

    scoreText:    .asciiz "Score: "
    clearChar:    .asciiz "\n\n"
    lineChar:     .asciiz "\n"
    spaceChar:    .asciiz " "
    enemyChar:    .asciiz "ø"    
    wallChar:     .asciiz ":"
    playerChar:   .asciiz "o"
    treasureChar: .asciiz "x"

    # initial player position
    playerCol: .word 4
    playerRow: .word 2
    playerLevel:  
            # = level 1 =
            .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
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
            # add more matrix maps here for additional levels


            # == level 2 ==
            # .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,4,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1


            # === level 3 ===
            # .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,3,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,4,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            # .word 1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,4,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,2,0,0,0,0,0,0,1,1,0,0,0,0,4,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1
            # .word 1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
            # .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
 
.text
main:
    move $s0, $zero        # num of rows
    move $s1, $zero        # num of cols
    move $s2, $zero        # size of each element
    move $s3, $zero        # total size allocation
    move $s4, $zero        # current col position
    move $s5, $zero        # current row position
    move $s6, $zero        # render state
    move $s7, $zero        # number of steps (score)

    li $s0, ROWS           # load num rows
    li $s1, COLS           # load num columns
    li $s2, SIZE           # load size of each element

    mul $s3, $s0, $s1      # $s3 = ROWS * COLS (total number of elements)
    mul $s3, $s3, $s2      # $s3 = $s3 * SIZE (total number of bytes)

    # set player position
    lw $s5, playerRow
    lw $s4, playerCol 

    # start drawing
    j _render

    
_loop:
    # render state
    beq $s6, 0, _gamePlayScreen
    beq $s6, 1, _gameOverScreen
    beq $s6, 2, _gameWinScreen
    

_moveUp:
    # movement
    subi $s5, $s5, 1 # move one step up
    jr $ra

_moveDown:
    # movement
    addi $s5, $s5, 1 # move 1 step down
    jr $ra

_moveLeft:
    # movement
    subi $s4, $s4, 2 # move 2 steps left
    jr $ra

_moveRight:
    # movement
    addi $s4, $s4, 2 # move 2 steps right
    jr $ra

_moveUpValidate:
    # arguments
    # $s4 player col
    # $s5 player row
    
    # validation
    # == don't allow movement here ==
    # check if next step is out of bounds
    subi $t4, $s5, 1
    blez $t4, _render
    #
    # get the element from the grid
    addi $a0, $zero, -1 # player row - 1
    addi $a1, $zero,  0 # player col + 0
    jal _getElement
    
    # check if next step is a wall
    beq $v1, 1, _render
    
    # == allow movement here ==
    jal _moveUp
    
    # check if the step is an enemy
    beq $v1, 4, _setGameOverState
    # check if the step is a treasure
    beq $v1, 2, _setGameWinState
    
    # increment the score
    addi $s7, $s7, 1
    
    j _render


_moveDownValidate:
    # arguments
    # $s4 player col
    # $s5 player row
    
    # validation
    # == don't allow movement here ==
    # check if next step is out of bounds
    addi $t4, $s5, 1
    blez $t4, _render
    #
    # get the element from the grid
    addi $a0, $zero,  1 # player row + 1
    addi $a1, $zero,  0 # player col + 0
    jal _getElement
    #
    # check if next step is a wall
    beq $v1, 1, _render
    #
    # == allow movement here ==
    jal _moveDown
    #
    # check if the step is an enemy
    beq $v1, 4, _setGameOverState
    # check if the step is a treasure
    beq $v1, 2, _setGameWinState
    
    # increment the score
    addi $s7, $s7, 1
    
    j _render


_moveLeftValidate:
    # validation
    # == don't allow movement here ==
    # check if next step is out of bounds
    subi $t4, $s4, 1
    blez $t4, _render
    # check if second step is out of bounds
    subi $t4, $s4, 2
    blez $t4, _render
    #
    # get next future step
    subi $a0, $zero,  0 # player row + 0
    subi $a1, $zero,  1 # player col - 1
    jal _getElement
    # store in $t4
    move $t4, $v1
    #
    # get second next future step
    subi $a0, $zero,  0 # player row + 0
    subi $a1, $zero,  2 # player col - 2
    jal _getElement
    # store in $t5
    move $t5, $v1
    #
    # check if next steps is a wall
    beq $t4, 1, _render
    beq $t5, 1, _render
    
    # == allow movement here ==
    jal _moveLeft
    #
    # check if the step is an enemy
    beq $t4, 4, _setGameOverState
    beq $t5, 4, _setGameOverState
    # check if the step is a treasure
    beq $t4, 2, _setGameWinState
    beq $t5, 2, _setGameWinState
    
    # increment the score
    addi $s7, $s7, 1
    
    j _render

_moveRightValidate:
    # validation
    # == don't allow movement here ==
    # check if next step is out of bounds
    addi $t4, $s4, 1
    blez $t4, _render
    # check if second step is out of bounds
    addi $t4, $s4, 2
    blez $t4, _render
    #
    # get next future step
    addi $a0, $zero,  0 # player row + 0
    addi $a1, $zero,  1 # player col + 1
    jal _getElement
    # store in $t4
    move $t4, $v1
    #
    # get second next future step
    addi $a0, $zero,  0 # player row + 0
    addi $a1, $zero,  2 # player col + 2
    jal _getElement
    # store in $t5
    move $t5, $v1
    #
    # check if next steps is a wall
    beq $t4, 1, _render
    beq $t5, 1, _render
    
    # == allow movement here ==
    jal _moveRight
    #
    # check if the step is an enemy
    beq $t4, 4, _setGameOverState
    beq $t5, 4, _setGameOverState
    # check if the step is a treasure
    beq $t4, 2, _setGameWinState
    beq $t5, 2, _setGameWinState        
    
    # increment the score
    addi $s7, $s7, 1
    
    j _render

   
_render:
    beq $t0, $s3, _renderComplete
    lw $t3, playerLevel($t0)
    addi $t0, $t0, 4

    jal _drawEntity

    addi $t1, $t1, 1       # increment col counter
    beq $t1, $s1, _newline

    j _render


    
_renderComplete:         
    # handle after the level is shown 
    jal _score       # print the score
    j _loop          # go back to loop

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
    lw $v1, playerLevel($v1)
    
    jr $ra
    

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


_score:
    # print the Score: text
    li $v0, 4
    la $a0, scoreText
    syscall
    
    # print the score value
    li $v0, 1
    move $a0, $s7
    syscall
    
    jr $ra 
    

_exit:
    li $v0, 10
    syscall


_setGamePlayState:
    # $s6 render state
    addi $s6, $zero, 0 # set render to game level screen
    j _render

_setGameOverState:
    # $s6 render state
    addi $s6, $zero, 1 # set render to game over screen
    j _render
    
_setGameWinState:
    # $s6 render state
    addi $s6, $zero, 2 # set render to winner screen
    j _render
    
    
_gameOverScreen:
    # wait one second
    li $v0, 32
    li $a0, 1000
    syscall

    # print a new line
    li $v0, 4
    la $a0, lineChar
    syscall

    # Print gameOverText1
    la $a0, gameOverText1   
    li $v0, 4               
    syscall                 

    # Print gameOverText2
    la $a0, gameOverText2   
    li $v0, 4               
    syscall                

    # Print gameOverText3
    la $a0, gameOverText3  
    li $v0, 4              
    syscall                

    # Print gameOverText4
    la $a0, gameOverText4  
    li $v0, 4              
    syscall                 

    # reset, then go back to gameplay screen
    # move $s6, $zero
    
    # wait one second
    li $v0, 32
    li $a0, 1000
    syscall    
    
    j _exit
    
    

_onKeyPressed:
    # Read a character from input
    li $v0, 12          # syscall code for reading a character
    syscall

    # return the char to $v1
    move $v1, $v0    

    jr $ra

  
_gamePlayScreen:
    # Listen for key events
    jal _onKeyPressed # returns char
   
     # Clear the console
    jal _clear # returns void
    
    # Reset registers
    move $t0, $zero        # byte offset for array elements 
    move $t1, $zero        # col element counter
    move $t2, $zero        # row element counter
    
    # movements handle the render update of the level
    beq $v1, W, _moveUpValidate
    beq $v1, A, _moveLeftValidate
    beq $v1, S, _moveDownValidate
    beq $v1, D, _moveRightValidate
    
    j _loop    # Continue the loop to read the next character
    
            
_gameWinScreen:
    # wait one second
    li $v0, 32
    li $a0, 1000
    syscall
    
    # print a new line
    li $v0, 4
    la $a0, lineChar
    syscall
    
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

    # reset, then go to next level gameplay screen
    # move $s6, #
    
    # wait one second
    li $v0, 32
    li $a0, 1000
    syscall    
    
    j _exit
    
