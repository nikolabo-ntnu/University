package patterns.delegation.office;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Printer {

	private Map<Employee, List<String>> history = new HashMap<Employee, List<String>>();
	
	void printDocument(String document, Employee employee) {
		System.out.println(document);
		if (history.containsKey(employee)) {
			history.get(employee).add(document);
		}
		else {
			List<String> temp = new ArrayList<String>();
			temp.add(document);
			history.put(employee, temp);
		}
	}
	
	List<String> getPrintHistory(Employee employee) {
		if (history.containsKey(employee)) {
			return history.get(employee);
		}
		else {
			return (List<String>) new ArrayList<String>();
		}
	}
	
}
