package encapsulation;

import java.util.Stack;

public class RPNCalc {
	
	private Stack<Double> stack = new Stack<Double>();
	
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
	
	void push(Double inp) {
		stack.push(inp);
	}
	
	double pop() {
		if (stack.isEmpty()) {
			return Double.NaN;
		}
		return stack.pop();
	}
	
	void performOperation(char op) {
		if (!stack.isEmpty()) {
			Double first = pop(), second = pop();
			boolean oneOperand = Double.isNaN(second);
			switch(op) {
			case '+':
				if (oneOperand) {
					push(first);
				}
				else {
					push(first + second);
				}
				break;
			case '-':
				if (oneOperand) {
					push(first);
				}
				else {
					push(second - first);
				}
				break;
			case '*':
				if (oneOperand) {
					push(first);
				}
				else {
					push(first * second);
				}
				break;
			case '/':
				if (oneOperand) {
					push(first);
				}
				else {
					push(second / first);
				}
				break;
			case '~':
				if (oneOperand) {
					push(first);
				}
				else {
					push(first);
					push(second);
				}
				break;
			case '|':
				if (oneOperand) {
					push(Math.abs(first));
				}
				else {
					push(second);
					push(Math.abs(first));
				}
				break;
			default:
				throw new IllegalArgumentException("Unknown operator, " + op);
			}
		}
		
	}
	public static void main(String[] args) {
		RPNCalc calc = new RPNCalc();
		calc.push(10.0);
		calc.toString();
		for (int i = 1; i < 5; i++) {
			calc.push(5.0*i);
		}
		calc.toString();
		calc.performOperation('+');
		calc.toString();
		calc.performOperation('-');
		calc.toString();
		calc.performOperation('|');
		calc.toString();
		calc.performOperation('*');
		calc.toString();
		calc.performOperation('~');
		calc.toString();
		calc.performOperation('/');
		calc.toString();
	}

}
