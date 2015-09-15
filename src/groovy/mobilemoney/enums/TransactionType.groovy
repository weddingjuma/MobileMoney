package mobilemoney.enums

public enum TransactionType {

	DEPOSIT(1) {
		public String toString() {
		  return "Deposit";
		}
	},
	WITHDRAWAL(2) {
		public String toString() {
		  return "Withdrawal";
		}
	}

	final int id

	TransactionType(int id) {
		this.id = id
	}

	static list() {
		[DEPOSIT, WITHDRAWAL]
	}
}
