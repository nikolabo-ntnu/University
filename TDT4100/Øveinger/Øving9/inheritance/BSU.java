package inheritance;

public class BSU extends SavingsAccount {
	
	private double maxDeposit;
	private double thisYearDeposit = 0;

	public BSU(double rate, double maxDeposit) {
		super(rate);
		if (maxDeposit >= 0) {
			this.maxDeposit = maxDeposit;
		}
		else {
			throw new IllegalArgumentException("MexDeposit negative");
		}
	}
	
	public double getTaxDeduction() {
		return thisYearDeposit*0.2;
	}
	
	@Override
	public void deposit(double amount) {
		if (maxDeposit > thisYearDeposit) {
			if (maxDeposit > (thisYearDeposit + amount)) {
				super.deposit(amount);
				thisYearDeposit += amount;
			}
			else {
				throw new IllegalStateException("MaxDeposit overridden");
			}
		}
		else {
			throw new IllegalStateException("MaxDeposit overridden");
		}
	}
	
	@Override
	public void withdraw(double amount) {
		if (thisYearDeposit < amount) {
			throw new IllegalStateException("Error");
		}
		else {
			super.withdraw(amount);
			thisYearDeposit -= amount;
		}
	}
	
	@Override
	public void endYearUpdate() {
		super.endYearUpdate();
		thisYearDeposit = 0;
	}
}
