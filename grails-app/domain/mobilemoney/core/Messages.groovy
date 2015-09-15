package mobilemoney.core

import mobilemoney.enums.MessageDirection

class Messages {
	
	Account	account
	Users user
	String message
	MessageDirection messageDirection
	Date dateLogged

    static constraints = {
		account()
		user()
		message()
		messageDirection()
		dateLogged()
    }
	
	public String toString(){
		return message
	}
}
