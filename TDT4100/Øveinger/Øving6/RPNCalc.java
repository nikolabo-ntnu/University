package interfaces;

import java.util.Stack;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

public class RPNCalc {
	
	private Stack<Double> stack = new Stack<Double>();
	private OperatorList opList = new OperatorList();
	
	public RPNCalc() {
		//Base operators
//		addOperator('+', (a, b) -> a + b);
//		addOperator('-', (a, b) -> a - b);
//		addOperator('*', (a, b) -> a * b);
//		addOperator('/', (a, b) -> a / b);
	}
	
	// Get state //
	
	double peek(int pos) {
		if (getSize() <= pos || stack.isEmpty()) {
			return Double.NaN;
		}
		return stack.get(getSize() - 1 - pos);
	}
	
	int getSize() {
		return stack.size();
	}
	
	public String toString() {
		String result = stack.toString();
		System.out.println(result);
		return result;
	}
	
	// Change state //
	
	boolean addOperator(char key, BinaryOperator<Double> op) {
		return opList.addOperator(key, op);
	}
	
	boolean addOperator(char key, UnaryOperator<Double> op) {
		return opList.addOperator(key, op);
	}
	
	boolean addOperator(char key, Supplier<Double> op) {
		return opList.addOperator(key, op);
	}
	
	void removeOperator(char key) {
		opList.removeOperator(key);
	}
	
	void push(Double inp) {
		stack.push(inp);
	}
	
	void push(int inp) {
		stack.push(Double.valueOf(inp));
	}
	
	double pop() {
		if (stack.isEmpty()) {
			return Double.NaN;
		}
		return stack.pop();
	}
	
	void performOperation(char key) {
		String medium = opList.getOperator(key);
		if (medium == null) {
			throw new UnsupportedOperationException("Operator '" + key + "' is not supported");
		}
		switch (medium) {
		case "BI":
			if (stack.size() > 1) {
				double second = pop();
				push(opList.getBinary(key).apply(pop(), second));
			}
			break;
		case "UN":
			push(opList.getUnary(key).apply(pop()));
			break;
		case "SUP":
			push(opList.getSupplier(key).get());
			break;
		default:
			throw new UnsupportedOperationException("Operator '" + key + "' is not supported");
		}
	}
	
	
	public static void main(String[] args) {
		RPNCalc calc = new RPNCalc();
		calc.addOperator('+', (a, b) -> a * b);
		calc.addOperator('1', (a, b) -> a * (a + b));
		calc.push(4);
		calc.push(3);
		calc.performOperation('+');
		calc.toString();
		calc.push(4);
		calc.push(3);
		calc.toString();
		calc.performOperation('1');
		calc.toString();
	}
}
