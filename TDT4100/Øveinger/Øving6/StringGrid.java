package interfaces;

public interface StringGrid extends Iterable<String>{

	public int getRowCount();
	
	public int getColumnCount();
	
	public String getElement(int row, int column);
	
	public void setElement(int row, int column, String element);
	
	public void swapRowMajor();
	
	
	public static void main(String[] args) {
		StringGrid tester = new StringGridImpl(3,2);
		tester.setElement(0, 0, "Hi");
		tester.setElement(0, 1, "Some element");
				
		for (String s : tester) {
			System.out.println(s);
		}
		
		tester.swapRowMajor();

		for (String s : tester) {
			System.out.println(s);
		}
				
	}
}
