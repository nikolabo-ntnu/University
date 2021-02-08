package app;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class SaveGameImpl implements SaveGame {

	
	public void saveGame(String filepath, Object game) {
		try {
			FileOutputStream outFile = new FileOutputStream(filepath);
			ObjectOutputStream outObject = new ObjectOutputStream(outFile);
			outObject.writeObject(game);
			outObject.close();
			outFile.close();
		}
		catch (Exception ex){
			ex.printStackTrace();
		}
	}
	
	public Object loadGame(String filepath) {
		try {
			FileInputStream inFile = new FileInputStream(filepath);
			ObjectInputStream inObject = new ObjectInputStream(inFile);
			Object inp = inObject.readObject();
			inObject.close();
			inFile.close();
			return inp;
		}
		catch (java.io.EOFException | java.io.StreamCorruptedException ex) {
			System.out.println("That file is not a save file!");
		}
		catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
}
