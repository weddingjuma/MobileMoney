package mobilemoney.core

import mobilemoney.enums.StatusType
import mobilemoney.lookup.AccountType
import mobilemoney.lookup.CurrencyType
import java.text.DecimalFormat

class Account {
	
	int accountNumber
	Users user
	AccountType accountType
	StatusType statusType
	BigDecimal balance = 0
	CurrencyType currencyType

    static constraints = {
		accountNumber(unique:true)
		user()
		accountType()
		statusType()
		balance(scale:2)
		currencyType()
    }
	
	public String toString(){
		DecimalFormat myFormatter = new DecimalFormat("#,###,###,##0.00")
		def formattedBalance = myFormatter.format(balance)
		return "${formattedBalance} ${currencyType}"
	}
}
