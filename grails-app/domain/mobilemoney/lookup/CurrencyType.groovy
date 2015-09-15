package mobilemoney.lookup

class CurrencyType {

    String name
	String code

    static constraints = {
		name()
		code()
    }
	
	static mapping = {
		sort "code"
	}

	public String toString(){
		return code
	}
}
