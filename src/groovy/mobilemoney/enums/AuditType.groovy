package mobilemoney.enums

public enum AuditType {
	
	LOGIN(1) {
		public String toString() {
		  return "Login";
		}
	},
	LOGOUT(2) {
		public String toString() {
		  return "Logout";
		}
	}

	final int id

	AuditType(int id) {
		this.id = id
	}

	static list() {
		[LOGIN, LOGOUT]
	}
}
