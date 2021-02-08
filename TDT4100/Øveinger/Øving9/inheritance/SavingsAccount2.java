package inheritance;

public class SavingsAccount2 extends AbstractAccount {
	
	private int withdrawals;
	private double fee;
	
	public SavingsAccount2(int withdrawals, double fee) {
		if (withdrawals < 0 || fee < 0) {
			throw new IllegalArgumentException();
		}
		this.withdrawals = withdrawals;
		this.fee = fee;
	}

	public void internalWithdraw(double amount) {		
		if (withdrawals > 0) {
			if (balance > amount) {
				balance -= amount;
				withdrawals--;
			}
			else {
				throw new IllegalStateException();
			}
		}
		else {
			if (balance > amount + fee) {
				balance -= (amount + fee);
			}
			else {
				throw new IllegalStateException();
			}
		}
	}

}
