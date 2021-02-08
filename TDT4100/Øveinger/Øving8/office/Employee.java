package patterns.delegation.office;

import java.util.Arrays;
import java.util.function.BinaryOperator;

public interface Employee {

	double doCalculations(BinaryOperator<Double> operation, double value1, double value2);
	
	void printDocument(String document);
	
	int getTaskCount();
	
	int getResourceCount();
	
	public static void main(String[] args) {
		
		Printer printer = new Printer();
		
		Employee clerk1 = new Clerk(printer);
		Employee clerk2 = new Clerk(printer);
		Employee clerk3 = new Clerk(printer);
		Employee clerk4 = new Clerk(printer);
		
		System.out.println("Resource count:");
		Employee man1 = new Manager(Arrays.asList(clerk1));
		System.out.println("man1: " + man1.getResourceCount());
		Employee man2 = new Manager(Arrays.asList(clerk2,clerk3));
		System.out.println("man2: " + man2.getResourceCount());
		Employee man3 = new Manager(Arrays.asList(clerk4));
		System.out.println("man3: " + man3.getResourceCount());

		Employee headManager = new Manager(Arrays.asList(man1, man2, man3));
		System.out.println("Headmanager: " + headManager.getResourceCount());
		
		Employee companyOwner = new Manager(Arrays.asList(headManager));
		System.out.println("Company owner: " + companyOwner.getResourceCount());
		
		System.out.println("\nTask count:");
		for (int i = 1; i < 6; i++) {
			companyOwner.doCalculations((a,b) -> a+b, 1, 1);
			System.out.println("Round " + i);
			System.out.println("Comp owner: " + companyOwner.getTaskCount());
			System.out.println("Head manager: " + headManager.getTaskCount());
			System.out.println("- man1: " + man1.getTaskCount());
			System.out.println("-- clerk1: " + clerk1.getTaskCount());
			System.out.println("- man2: " + man2.getTaskCount());
			System.out.println("-- clerk2: " + clerk2.getTaskCount());
			System.out.println("-- clerk3: " + clerk3.getTaskCount());
			System.out.println("- man3: " + man3.getTaskCount());
			System.out.println("-- clerk4: " + clerk4.getTaskCount() + "\n");
		}
	}
}
