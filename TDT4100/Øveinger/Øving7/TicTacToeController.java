package app;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.GridPane;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class TicTacToeController {
	
	// Non-FXML variables
	private TicTacToe game;
	private ObservableList<Node> buttons;
	private SaveGame gameSaver = new SaveGameImpl();
	
	// FXML variables
    @FXML
    private GridPane grid;
    @FXML
    private Label turnField;
    @FXML
    private Label playerWin;

    
    @FXML
    public void initialize() {
    	buttons = grid.getChildren();
    	game = new TicTacToe();
    	updateBoard(game.getBoard());
	}
    
    @FXML
    void onClick(ActionEvent event) {
    	Button button = (Button) event.getSource();
    	int x = nullConverter(GridPane.getRowIndex(button));
    	int y = nullConverter(GridPane.getColumnIndex(button));
    	
    	game.play(x, y);
    	updateBoard(game.getBoard());
    	updatePlayerTurn(game.getPlayerTurn());
    	if (game.getWin()) {
    		setResult(game.getResult());
    	}
    }
    
    @FXML
    void restartGame(ActionEvent event) {
    	game = new TicTacToe();
    	playerWin.setText("");
    	updateBoard(game.getBoard());
    }
    
    @FXML
    void save(ActionEvent event) {
    	FileChooser fileChooser = new FileChooser();
    	fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("XML files (*.XML)", "*.XML"));
    	String selectedPath = null;
    	try {
    		selectedPath = fileChooser.showSaveDialog((Stage)((Button) event.getSource()).getScene().getWindow()).toString();
    	}
    	catch (Exception ex) {
    		System.out.println("Exception caught!");
    	}
    	if (selectedPath != null) {
    		gameSaver.saveGame(selectedPath, game);
    	}
    	
    }
    
    @FXML
    void load(ActionEvent event) {
    	TicTacToe gameSave = game;
    	FileChooser fileChooser = new FileChooser();
    	fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("XML files (*.XML)", "*.XML"));
    	String selectedPath = null;
    	try {
    		selectedPath = fileChooser.showOpenDialog((Stage)((Button) event.getSource()).getScene().getWindow()).toString();
    	}
    	catch (Exception ex) {
    		System.out.println("Exception caught!");
    	}
    	if (selectedPath != null) {
    		game = (TicTacToe) gameSaver.loadGame(selectedPath);
    	}
    	
    	try {
        	updateBoard(game.getBoard());
        	updatePlayerTurn(game.getPlayerTurn());
        	if (game.getWin()) {
        		setResult(game.getResult());
        	}
    	}
    	catch (Exception ex) {
    		Alert alert = new Alert(AlertType.ERROR);
    		alert.setTitle("Error!");
    		alert.setHeaderText("Error loading from file!");
    		alert.setContentText("You choose an invalid XML file. \n"
    				+ "Probably caused by choosing an XML file \n"
    				+ "not created by this program.");
    		alert.showAndWait();
    		game = gameSave;
    	}
    }
    
    // Since GridPane.getRowIndex(button) returns null for 0.
    int nullConverter(Integer x) {
    	if (x == null) {
    		return 0;
    	}
    	else {
    		return x;
    	}
    }
    
    void updateBoard(char[][] board) {
    	for (int i = 0; i < 3; i++) {
    		for (int j = 0; j < 3; j++) {
    			for (Node k : buttons) {
    				if (nullConverter(GridPane.getRowIndex(k)) == i && nullConverter(GridPane.getColumnIndex(k)) == j) {
    					Button temp = (Button) k;
    					temp.setText(String.valueOf(board[i][j]));
    					break;
    				}
    			}
    		}
    	}
    }
    
    void updatePlayerTurn(char playerTurn) {
    	turnField.setText(String.valueOf(playerTurn));
    }
    
    void setResult(String result) {
    	playerWin.setText(result);
    }
    
}
