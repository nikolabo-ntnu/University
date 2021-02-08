package inheritance;

public class ForeldreSpar extends SavingsAccount {
	
	private int maxWithdrawals;
	private int usedWithrawals = 0;
	
	public ForeldreSpar(double rate, int maxWithdrawals) {
		super(rate);
		if (maxWithdrawals < 0) {
			throw new IllegalArgumentException("N maxW");
		}
		this.maxWithdrawals = maxWithdrawals;
	}

	public int getRemainingWithdrawals() {
		return maxWithdrawals - usedWithrawals;
	}
	
	@Override
	public void withdraw(double amount) {
		if (usedWithrawals < maxWithdrawals) {
			super.withdraw(amount);
			usedWithrawals++;
		}
		else {
			throw new IllegalStateException("Withdrawal error!");
		}
	}
	
	@Override
	public void endYearUpdate() {
		super.endYearUpdate();
		usedWithrawals = 0;
	}
}
