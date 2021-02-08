package patterns.observable;

import java.util.Scanner;

public class HighscoreListProgram implements HighscoreListListener{

	HighscoreList highscore;
	
	void init() {
		highscore = new HighscoreList(10);
		highscore.addHighscoreListListener(this);
	}
	
	void run() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Input '666' to end loop.");
		while (true) {
			int newInp = scanner.nextInt();
			if (newInp == 666) {
				break;
			}
			highscore.addResult(newInp);
		}
		
		scanner.close();
	}
	
	public void listChanged(HighscoreList li, int index) {
		System.out.println(li.toString() + " : " + index);
	}

	
	public static void main(String[] args) {
		HighscoreListProgram tester = new HighscoreListProgram();
		tester.init();
		tester.run();
		
	}
}
