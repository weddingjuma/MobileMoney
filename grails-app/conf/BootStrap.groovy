import mobilemoney.lookup.*
import mobilemoney.core.*
import mobilemoney.enums.StatusType

class BootStrap {
	
	//def authenticateService

    def init = { servletContext ->
		
		createLookupVariablesIfReqired()
		
		createTestDataIfRequired()
    }
	
	void createLookupVariablesIfReqired() {
		
		// AccountTypes
		if (!AccountType.findByName("Current")) new AccountType(name: 'Current').save(flush: true)
		if (!AccountType.findByName("Savings")) new AccountType(name: 'Savings').save(flush: true)
	
		// CurrencyTypes
		if (!CurrencyType.findByCode("CAD")) new CurrencyType(name: 'Canadian Dollar', code: 'CAD').save(flush: true)
		
		// Admin user
		if (!Users.findByUsername("admin")) {
			new Users(username: 'admin', firstName: 'Admin', lastName: 'Staff', email: 'dorsmw@gmail.com', 
				password: 'admin', enabled: true).save(flush: true)
		}
	}
	
	void createTestDataIfRequired() {
		
		// Test Account
		if (!Account.findByAccountNumber(12345)) {
			new Account(accountNumber: 12345, user: Users.findByUsername("admin"),
				accountType: AccountType.findByName("Current"), statusType: StatusType.ACTIVE,
				balance: 500, currencyType: CurrencyType.findByCode("CAD")).save(flush: true)
		}
	}
	
    def destroy = {
    }
}
