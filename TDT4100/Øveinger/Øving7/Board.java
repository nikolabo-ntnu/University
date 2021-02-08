package app;

import java.io.Serializable;

public class Board implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private char[][] board = new char[3][3];
		
	public Board() {
		for(int i = 0; i < 3; i++) {
			for (int j = 0; j < 3; j++) {
				board[i][j] = '-';
			}
		}
	}
	
	void doMove(int x, int y, char playerTurn) {
		board[x][y] = playerTurn;
	}
	
	Boolean isLegal(int x, int y) {
		if (board[x][y] == '-') {
			return true;
		}
		return false;
	}
	
	Boolean checkForWin(char playerTurn) {
		for (int i = 0; i < 3; i++) {
			boolean hasWonHor = true, hasWonVer = true;
			for (int j = 0; j < 3; j++) {
				if (board[i][j] != playerTurn) {
					hasWonHor = false;
				}
				if (board[j][i] != playerTurn) {
					hasWonVer = false;
				}
				
				if (!hasWonHor && !hasWonVer) {
					break;
				}
			}
			if (hasWonHor || hasWonVer) {
				return true;
			}
		}
		
		if (board[0][0] == playerTurn && board[1][1] == playerTurn && board[2][2] == playerTurn) {
			return true;
		}
		if (board[0][2] == playerTurn && board[1][1] == playerTurn && board[2][0] == playerTurn) {
			return true;
		}
		
		return false;
	}
	
	boolean isFull() {
		for (int i = 0; i < 3; i++) {
			for (char j : board[i]) {
				if (j == '-') {
					return false;
				}
			}
		}
		return true;
	}
	
	char[][] getBoard() {
		return board;
	}
}
