package objectstructures;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class Person {
	
	private String name;
	private char gender;
	
	private Person mother;
	private Person father;
	private List<Person> children = new ArrayList<Person>();
	
	public Person(String name, char gender) {
		if (gender != 'F' && gender != 'M') {
			throw new IllegalArgumentException("Illegal gender entered");
		}
		else {
			this.gender = gender;
		}
		
		setName(name);
	}
	
	private void setName(String name) {
		if (Pattern.matches("(?i)\\b[A-Z]{2,}\\b", name)) {
			this.name = name;
		}
		else {
			throw new IllegalArgumentException("Illegal naming scheme");
		}
	}
	
	@Override
	public String toString() {
		String result = getName() + ":\n";
		if (getMother() != null) {
			result += "Mother: " + getMother().getName() + "\n";
		}
		else {
			result += "Mother: none\n";
		}
		
		if (getFather() != null) {
			result += "Father: " + getFather().getName() + "\n";
		}
		else {
			result += "Father: none\n";
		}
		if (getChildCount() > 0) {
			List<String> temp = new ArrayList<String>();
			children.forEach(n -> temp.add(n.getName()));
				
			result += "Children: " + temp.toString() + "\n";
		}
		else {
			result += "Children: none\n";
		}
		
		return result;
	}
	
	// Get
	String getName() {
		return name;
	}
	
	char getGender() {
		return gender;
	}
	
	Person getMother() {
		return mother;
	}
	
	Person getFather() {
		return father;
	}
	
	int getChildCount() {
		return children.size();
	}
	
	Person getChild(int index) {
		if (index < 0 || index >= getChildCount()) {
			throw new IndexOutOfBoundsException("Index out of range");
		}
		else {
			return children.get(index);
		}
	}
	
	// Change state
	
	// Child
	void addChild(Person child) {
		if (!children.contains(child)) {
			children.add(child);
			if (gender == 'M') {
				if (child.getFather() != this) {
					child.setFather(this);
				}
			}
			else {
				if (child.getMother() != this) {
					child.setMother(this);
				}
			}	
		}
	}
	
	void removeChild(Person child) {
		if (children.contains(child)) {
			children.remove(child);
			
			if (gender == 'M') {
				if (father != null) {
					child.setFather(null);	
				}
			}
			else {
				if (mother != null) {
					child.setMother(null);
				}
			}
		}
	}
	
	// Father / Mother
	void setMother(Person mother) {
		if (mother.getGender() == 'F' && mother != this) {
			if (this.mother != null) {
				this.mother.removeChild(this);
			}
			this.mother = mother;
			mother.addChild(this);
		}
		else {
			throw new IllegalArgumentException("Illegal mother argument, self or male");
		}
	}
	
	void setFather(Person father) {
		if (father.getGender() == 'M' && father != this) {
			if (this.father != null) {
				this.father.removeChild(this);
			}
			this.father = father;
			father.addChild(this);
		}
		else {
			throw new IllegalArgumentException("Illegal father argument, self or female");
		}
	}
	
	
	public static void main(String[] args) {
		Person me = new Person("Nikolai", 'M');
		Person mother = new Person("Nina", 'F');
		Person father = new Person("Erik", 'M');
		
		me.setFather(father);
		System.out.println(me);
		mother.addChild(me);
		System.out.println(me);
		System.out.println(mother);
		
		Person someone = new Person("Tor", 'M');
		me.setFather(someone);
		
		System.out.println(me);
		System.out.println(father);
		
		Person myKid = new Person("Chloe", 'F');
		myKid.setFather(me);
		
		System.out.println(me);
		System.out.println(myKid);
	}
}
