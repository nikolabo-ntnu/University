package interfaces;

import java.util.Iterator;

public class StringGridIterator implements Iterator<String>{
	
	private StringGrid grid;
	private boolean rowMajor;
	
	private int[] pos;
	
	public StringGridIterator(StringGrid grid, boolean rowMajor) {
		this.grid = grid;
		this.rowMajor = rowMajor;
		if (rowMajor) {
			pos = new int[] {0,-1};
		}
		else {
			pos = new int[] {-1, 0};
		}
	}
	
	public boolean hasNext() {
		if (pos[0] == grid.getRowCount() - 1 && pos[1] == grid.getColumnCount() - 1) {
			return false;
		}
		return true;
	}
	
	public String next() {
		if (rowMajor) {
			int n = pos[1] + 1;
			if (n >= grid.getColumnCount()) {
				n = 0;
				pos[0]++;
			}
			pos[1] = n;
			
			return grid.getElement(pos[0], pos[1]);
		}
		else {
			int n = pos[0] + 1;
			if (n >= grid.getRowCount()) {
				n = 0;
				pos[1]++;
			}
			pos[0] = n;
			
			return grid.getElement(pos[0], pos[1]);
		}
	}
	
	public void remove() {
		throw new UnsupportedOperationException();
	}
}
