package objectstructures;

import org.junit.Test;

public class CoffeeCupTest extends junit.framework.TestCase {
	

	
	
	CoffeeCup cup = new CoffeeCup();
	
	@Test
	public void testConstructorAndGet() {
		assertEquals(0.0, cup.getCapacity());
		assertEquals(0.0, cup.getCurrentVolume());
		cup = new CoffeeCup(2, 2);
		assertEquals(2.0, cup.getCapacity());
		assertEquals(2.0, cup.getCurrentVolume());
		
		try {
			cup = new CoffeeCup(-2, 2);
			fail("Expected IllegalArgumentException");
		}
		catch (IllegalArgumentException e) {
			assertEquals(e.getMessage(), "Illegal capacity given.");
		}
		
		try {
			cup = new CoffeeCup(2, -2);
			fail("Expected IllegalArgumentException");
		}
		catch (IllegalArgumentException e) {
			assertEquals(e.getMessage(), "Illegal volume given.");
		}
	}
	
	@Test
	public void testIncrease() {
		cup.increaseCupSize(10);
		assertEquals(10.0, cup.getCapacity());
		cup.increaseCupSize(-10);
		assertEquals(10.0, cup.getCapacity());
	}
	
	@Test
	public void testFill() {
		cup.increaseCupSize(10);
		cup.fillCoffee(5);
		assertEquals(5.0, cup.getCurrentVolume());
		cup.fillCoffee(-3);
		assertEquals(5.0, cup.getCurrentVolume()); //CoffeeCup allows negative fill
		
		try {
			cup.fillCoffee(10);
			fail("Exception not thrown");
		}
		catch (IllegalArgumentException e){
			assertEquals(e.getMessage(), "You just poured coffee all over the table. Good job.");
		}
		
	}
	
	@Test
	public void testDrink() {
		cup.increaseCupSize(15);
		cup.fillCoffee(10);
		cup.drinkCoffee(2);
		assertEquals(8.0, cup.getCurrentVolume());
		try {
			cup.drinkCoffee(-2);
			fail("Expected IllegalArgumentException");
		}
		catch (IllegalArgumentException e) {
			assertEquals(e.getMessage(), "You can't drink that much coffee!");
		}
		
		try {
			cup.drinkCoffee(55);
			fail("Expected IllegalArgumentException");
		}
		catch (IllegalArgumentException e) {
			assertEquals(e.getMessage(), "You can't drink that much coffee!");
		}
		
	}
}
