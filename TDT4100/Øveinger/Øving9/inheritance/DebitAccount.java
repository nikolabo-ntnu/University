package inheritance;

public class DebitAccount extends AbstractAccount{

	public void internalWithdraw(double amount) {
		if (balance < amount) {
			throw new IllegalStateException();
		}
		balance -= amount;
	}

}
