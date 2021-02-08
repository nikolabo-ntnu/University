package inheritance;

public class CreditAccount extends AbstractAccount {

	private double creditLine;
	
	public CreditAccount(double creditLine) {
		if (creditLine < 0) {
			throw new IllegalArgumentException();
		}
		this.creditLine = creditLine;
	}
	
	
	public void internalWithdraw(double amount) {
		if (balance + creditLine < amount) {
			throw new IllegalStateException();
		}
		balance -= amount;
	}

	
	public double getCreditLine() {
		return creditLine;
	}
	
	public void setCreditLine(double line) {
		if (line < 0) {
			throw new IllegalArgumentException();
		}
		if (balance > -line) {
			creditLine = line;
		}
		else {
			throw new IllegalStateException();
		}
	}
}
