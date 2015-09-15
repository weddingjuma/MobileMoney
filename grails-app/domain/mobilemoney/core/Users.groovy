package mobilemoney.core

class Users {

    String username
	String firstName
	String lastName
	String email
	String password
	boolean enabled = true
	// boolean changePassword = true

    static constraints = {
		username(blank: false, unique: true)
		firstName(blank: false)
		lastName(blank: false)
		email(nullable: true)
		password(blank: false)
		enabled()		
    }
	
	public String toString() {
		return username
	}
}
