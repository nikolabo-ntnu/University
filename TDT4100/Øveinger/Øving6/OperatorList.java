package interfaces;

import java.util.HashMap;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

public class OperatorList {
	
	private Map<Character, BinaryOperator<Double>> binaryOp = new HashMap<Character, BinaryOperator<Double>>();
	private Map<Character, UnaryOperator<Double>> unaryOp = new HashMap<Character, UnaryOperator<Double>>();
	private Map<Character, Supplier<Double>> supplier = new HashMap<Character, Supplier<Double>>();
	
	
	boolean addOperator(char key, BinaryOperator<Double> op) {
		if (!containsKey(key)) {
			binaryOp.put(key, op);
			return true;
		}
		return false;
	}
	
	boolean addOperator(char key, UnaryOperator<Double> op) {
		if (!containsKey(key)) {
			unaryOp.put(key, op);
			return true;
		}
		return false;
	}	
	
	boolean addOperator(char key, Supplier<Double> op) {
		if (!containsKey(key)) {
			supplier.put(key, op);
			return true;
		}
		return false;
	}
	
	boolean containsKey(char key) {
		return binaryOp.containsKey(key) || unaryOp.containsKey(key) || supplier.containsKey(key);
	}
	
	void removeOperator(char key) {
		if (binaryOp.containsKey(key)) {
			binaryOp.remove(key);
		}
		else if (unaryOp.containsKey(key)){
			unaryOp.remove(key);
		}
		else if (supplier.containsKey(key)) {
			supplier.remove(key);
		}
	}
	
	String getOperator(char key) {
		if (getBinary(key) != null) {
			return "BI";
		}
		if (getUnary(key) != null) {
			return "UN";
		}
		if (getSupplier(key) != null) {
			return "SUP";
		}
		return null;
	}
	
	BinaryOperator<Double> getBinary(char key){
		if (binaryOp.containsKey(key)) {
			return binaryOp.get(key);
		}
		return null;
	}
	
	UnaryOperator<Double> getUnary(char key){
		if (unaryOp.containsKey(key)) {
			return unaryOp.get(key);
		}
		return null;
	}
	
	Supplier<Double> getSupplier(char key){
		if (supplier.containsKey(key)) {
			return supplier.get(key);
		}
		return null;
	}
}
