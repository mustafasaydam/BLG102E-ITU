#include <stdio.h>


void check_winner(char board[3][3]) {
    int i, j;
    // Check rows and columns
    for(i = 0; i < 3; i++) {
        if(board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
            if(board[i][0] == 'X' || board[i][0] == 'O') {
                printf("Winner: %c\n", board[i][0]);
                return;
            }
        }
        if(board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
            if(board[0][i] == 'X' || board[0][i] == 'O') {
                printf("Winner: %c\n", board[0][i]);
                return;
            }
        }
    }

    // Check diagonals
    if(board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
        if(board[0][0] == 'X' || board[0][0] == 'O') {
            printf("Winner: %c\n", board[0][0]);
            return;
        }
    }
    if(board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
        if(board[0][2] == 'X' || board[0][2] == 'O') {
            printf("Winner: %c\n", board[0][2]);
            return;
        }
    }

    // Check for invalid characters
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            if(board[i][j] != 'X' && board[i][j] != 'O' && board[i][j] != ' ') {
                printf("Invalid input. The board should be a 3x3 array.\n");
                return;
            }
        }
    }

    printf("Tie\n");
}

int main()
{
    char board[3][3];

    printf("Enter tic-tac-toe board: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) 
        {
            scanf(" %c", &board[i][j]);
        }
    }
    check_winner(board);
    return 0;
}