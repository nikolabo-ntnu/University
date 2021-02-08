package app;

import java.io.Serializable;

public class TicTacToe implements Serializable{
		
	private static final long serialVersionUID = 1L;

	
	private Board board;
	private char playerTurn = 'X';
	private boolean hasWon = false;
	private String result;
	
	public TicTacToe() {
		board = new Board();
	}
	
	
	void play(int x, int y) {
		if (board.isLegal(x, y) && !hasWon) {
			board.doMove(x, y, playerTurn);
			if (board.checkForWin(playerTurn)) {
				hasWon = true;
				result = "Player " + playerTurn + " has won!";
			}
			
			if (!hasWon && board.isFull()) {
				hasWon = true;
				result = "The game is a tie!";
			}
			if (!hasWon) {
				switch (playerTurn) {
				case 'X':
					playerTurn = 'O';
					break;
				default:
					playerTurn = 'X';
				}
			}
		}
	}
	
	char[][] getBoard(){
		return board.getBoard();
	}
	
	char getPlayerTurn() {
		return playerTurn;
	}
	
	boolean getWin() {
		return hasWon;
	}
	
	String getResult() {
		return result;
	}
	
}
