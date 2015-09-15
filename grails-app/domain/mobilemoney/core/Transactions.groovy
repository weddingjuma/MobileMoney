package mobilemoney.core

import mobilemoney.enums.TransactionMethod
import mobilemoney.enums.TransactionType
import mobilemoney.lookup.CurrencyType

class Transactions {
	
	Account	account
	BigDecimal amount
	CurrencyType currencyType
	TransactionType transactionType
	TransactionMethod transactionMethod
	String description
	Date dateLogged

    static constraints = {
		account()
		amount()
		currencyType()
		transactionType()
		transactionMethod()
		description()
		dateLogged()
    }
	
	public String toString(){
		return description
	}
}
