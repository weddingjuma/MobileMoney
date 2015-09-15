package mobilemoney.enums

public enum StatusType {
	
	ACTIVE(1) {
		public String toString() {
		  return "Active";
		}
	},
	INACTIVE(2) {
		public String toString() {
		  return "Inactive";
		}
	}

	final int id

	StatusType(int id) {
		this.id = id
	}

	static list() {
		[ACTIVE, INACTIVE]
	}
}
