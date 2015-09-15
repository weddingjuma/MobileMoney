package mobilemoney.core

import mobilemoney.enums.AuditType

class Audit {
	
	Users user
	AuditType auditType
	String description
	Date dateLogged  = new Date()
	// String	ipAddress

    static constraints = {
		user()
		auditType()
		description()
		dateLogged()
    }
	
	static mapping = {
		sort "dateLogged"
	}
	
	public String toString(){
		return description
	}
}
