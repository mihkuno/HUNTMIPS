import random
import keyboard
import os
import time

def create_matrix():
    matrix = [[0 for _ in range(3)] for _ in range(3)]
    x, y = random.randint(0, 2), random.randint(0, 2)
    matrix[x][y] = 1
    return matrix, x, y

def display_matrix(matrix):
    os.system('cls' if os.name == 'nt' else 'clear')
    for row in matrix:
        print(' '.join(map(str, row)))
    print()

def move(matrix, x, y, direction):
    matrix[x][y] = 0
    if direction == 'w' and x > 0:      # Move up
        x -= 1
    elif direction == 's' and x < 2:    # Move down
        x += 1
    elif direction == 'a' and y > 0:    # Move left
        y -= 1
    elif direction == 'd' and y < 2:    # Move right
        y += 1
    matrix[x][y] = 1
    return x, y

def main():
    matrix, x, y = create_matrix()
    display_matrix(matrix)

    while True:
        try:
            if keyboard.is_pressed('w'):
                x, y = move(matrix, x, y, 'w')
                display_matrix(matrix)
                time.sleep(0.2)  # Prevent too fast movements
                while keyboard.is_pressed('w'):
                    pass  # Wait until the key is released

            elif keyboard.is_pressed('s'):
                x, y = move(matrix, x, y, 's')
                display_matrix(matrix)
                time.sleep(0.2)  # Prevent too fast movements
                while keyboard.is_pressed('s'):
                    pass  # Wait until the key is released

            elif keyboard.is_pressed('a'):
                x, y = move(matrix, x, y, 'a')
                display_matrix(matrix)
                time.sleep(0.2)  # Prevent too fast movements
                while keyboard.is_pressed('a'):
                    pass  # Wait until the key is released

            elif keyboard.is_pressed('d'):
                x, y = move(matrix, x, y, 'd')
                display_matrix(matrix)
                time.sleep(0.2)  # Prevent too fast movements
                while keyboard.is_pressed('d'):
                    pass  # Wait until the key is released

        except:
            break

if __name__ == "__main__":
    main()
