package mobilemoney.enums

public enum TransactionMethod {

	CASH(1) {
		public String toString() {
		  return "Cash";
		}
	},
	MONEY_ORDER(2) {
		public String toString() {
		  return "Money order";
		}
	}

	final int id

	TransactionMethod(int id) {
		this.id = id
	}

	static list() {
		[CASH, MONEY_ORDER]
	}
}
