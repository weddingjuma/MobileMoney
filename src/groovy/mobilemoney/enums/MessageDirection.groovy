package mobilemoney.enums

public enum MessageDirection {
	
	INCOMING(1) {
		public String toString() {
		  return "Incoming";
		}
	},
	OUTGOING(2) {
		public String toString() {
		  return "Outgoing";
		}
	}

	final int id

	MessageDirection(int id) {
		this.id = id
	}

	static list() {
		[INCOMING, OUTGOING]
	}
}
