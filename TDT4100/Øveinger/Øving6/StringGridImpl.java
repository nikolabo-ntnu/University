package interfaces;

import java.util.Iterator;

public class StringGridImpl implements StringGrid {
	
	private String[][] grid;
	private int rows, columns;
	private boolean rowMajor = true;
	
	public StringGridImpl(int rows, int columns) {
		if (rows > 0 && columns > 0) {
			this.rows = rows;
			this.columns = columns;
			grid = new String[rows][columns];
		}
		else {
			throw new IllegalArgumentException("Can not have negative size");
		}
	}
	
	public int getRowCount() {
		return rows;
	}
	
	public int getColumnCount() {
		return columns;
	}
	
	public String getElement(int row, int column) {
		if (checkRange(row, column)) {
			return grid[row][column];
		}
		return null;
	}
	
	public void setElement(int row, int column, String element) {
		if (checkRange(row, column)) {
			grid[row][column] = element;
		}
	}
	
	private boolean checkRange(int row, int column) {
		if (row >= 0 && row < rows && column >= 0 && column < columns) {
			return true;
		}
		else {
			throw new IllegalArgumentException("Illegal row or column index");
		}
	}

	public void swapRowMajor() {
		this.rowMajor = !this.rowMajor;
	}
	
	@Override
	public Iterator<String> iterator() {
		return new StringGridIterator(this, rowMajor);
	}
	
}
