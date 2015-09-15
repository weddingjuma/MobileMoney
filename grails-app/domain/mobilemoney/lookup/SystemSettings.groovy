package mobilemoney.lookup

class SystemSettings {

    String key
	String setting
	String dataType		// Refers to the type of object that Setting is, such as String, Integer, etc.

    static constraints = {
		key()
		setting(nullable:true, blank:true, widget:"textarea")
		dataType()
    }
	
	static mapping = {
		setting type: "text"
	}

	public String toString(){
		return key
	}
}
