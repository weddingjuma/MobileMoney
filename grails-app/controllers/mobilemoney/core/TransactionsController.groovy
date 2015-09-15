package mobilemoney.core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TransactionsController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Transactions.list(params), model:[transactionsInstanceCount: Transactions.count()]
    }

    def show(Transactions transactionsInstance) {
        respond transactionsInstance
    }

    def create() {
        respond new Transactions(params)
    }

    @Transactional
    def save(Transactions transactionsInstance) {
        if (transactionsInstance == null) {
            notFound()
            return
        }

        if (transactionsInstance.hasErrors()) {
            respond transactionsInstance.errors, view:'create'
            return
        }

        transactionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'transactions.label', default: 'Transactions'), transactionsInstance.id])
                redirect transactionsInstance
            }
            '*' { respond transactionsInstance, [status: CREATED] }
        }
    }

    def edit(Transactions transactionsInstance) {
        respond transactionsInstance
    }

    @Transactional
    def update(Transactions transactionsInstance) {
        if (transactionsInstance == null) {
            notFound()
            return
        }

        if (transactionsInstance.hasErrors()) {
            respond transactionsInstance.errors, view:'edit'
            return
        }

        transactionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Transactions.label', default: 'Transactions'), transactionsInstance.id])
                redirect transactionsInstance
            }
            '*'{ respond transactionsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Transactions transactionsInstance) {

        if (transactionsInstance == null) {
            notFound()
            return
        }

        transactionsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Transactions.label', default: 'Transactions'), transactionsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactions.label', default: 'Transactions'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
