package patterns.delegation.office;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.BinaryOperator;

public class Manager implements Employee{
	
	private Collection<Employee> employees;
	private int taskCount = 0;
	private Iterator<Employee> cycler;

	public Manager(Collection<Employee> employees) {
		if (!employees.isEmpty()) {
			this.employees = employees;
		}
		else {
			throw new IllegalArgumentException("A manager needs some employees!");
		}
		cycler = employees.iterator();
	}

	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount++;
		if (cycler.hasNext()) {
			return ((Employee) cycler.next()).doCalculations(operation, value1, value2);
		}
		else {
			cycler = employees.iterator();
			return ((Employee) cycler.next()).doCalculations(operation, value1, value2);
		}
	}

	public void printDocument(String document) {
		if (cycler.hasNext()) {
			((Employee) cycler.next()).printDocument(document);
		}
		else {
			cycler = employees.iterator();
			((Employee) cycler.next()).printDocument(document);
		}
		taskCount++;
	}

	public int getTaskCount() {
		return taskCount;
	}

	public int getResourceCount() {
		return employees.stream().mapToInt(n -> n.getResourceCount()).sum() + 1;
	}
	
}
