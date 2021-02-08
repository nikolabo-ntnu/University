package app;

public interface SaveGame {

	public void saveGame(String filepath, Object game);
	
	public Object loadGame(String filepath);
	
}
