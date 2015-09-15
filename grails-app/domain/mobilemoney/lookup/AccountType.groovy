package mobilemoney.lookup

class AccountType {

    String name

    static constraints = {
    }
	
	static mapping = {
		sort "name"
	}

	public String toString(){
		return name
	}
}
