package mobilemoney.lookup



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountTypeController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountType.list(params), model:[accountTypeInstanceCount: AccountType.count()]
    }

    def show(AccountType accountTypeInstance) {
        respond accountTypeInstance
    }

    def create() {
        respond new AccountType(params)
    }

    @Transactional
    def save(AccountType accountTypeInstance) {
        if (accountTypeInstance == null) {
            notFound()
            return
        }

        if (accountTypeInstance.hasErrors()) {
            respond accountTypeInstance.errors, view:'create'
            return
        }

        accountTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountType.label', default: 'AccountType'), accountTypeInstance.id])
                redirect accountTypeInstance
            }
            '*' { respond accountTypeInstance, [status: CREATED] }
        }
    }

    def edit(AccountType accountTypeInstance) {
        respond accountTypeInstance
    }

    @Transactional
    def update(AccountType accountTypeInstance) {
        if (accountTypeInstance == null) {
            notFound()
            return
        }

        if (accountTypeInstance.hasErrors()) {
            respond accountTypeInstance.errors, view:'edit'
            return
        }

        accountTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountType.label', default: 'AccountType'), accountTypeInstance.id])
                redirect accountTypeInstance
            }
            '*'{ respond accountTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountType accountTypeInstance) {

        if (accountTypeInstance == null) {
            notFound()
            return
        }

        accountTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountType.label', default: 'AccountType'), accountTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountType.label', default: 'AccountType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
