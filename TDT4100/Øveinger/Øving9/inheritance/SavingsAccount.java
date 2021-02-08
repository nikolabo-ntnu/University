package inheritance;

public class SavingsAccount implements Account {
	
	double balance = 0;
	double interestRate;

	public SavingsAccount(double rate) {
		if (rate > 0) {
			interestRate = rate;
		}
		else {
			throw new IllegalArgumentException("Negative rate");
		}
	}
	
	public void deposit(double amount) {
		if (amount >= 0) {
			balance += amount;
		}
		else {
			throw new IllegalArgumentException("Deposit error!");
		}
	}

	public void withdraw(double amount) {
		if (amount < 0) {
			throw new IllegalArgumentException("Withdrawl error");
		}
		else if (amount > balance) {
			throw new IllegalStateException("Withdrawl error!");
		}
		else {
			balance -= amount;
		}

	}

	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate() {
		balance += balance*interestRate;
	}

}
