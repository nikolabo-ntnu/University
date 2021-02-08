package patterns.delegation.office;

import java.util.function.BinaryOperator;

public class Clerk implements Employee{
	
	private Printer printer;
	private int taskCount = 0;
	
	
	public Clerk(Printer printer) {
		this.printer = printer;
	}

	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount++;
		return operation.apply(value1, value2);
	}

	public void printDocument(String document) {
		printer.printDocument(document, this);	
		taskCount++;
	}

	public int getTaskCount() {
		return taskCount;
	}

	public int getResourceCount() {
		return 1;
	}

}
