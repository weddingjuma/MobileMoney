package mobilemoney.lookup



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CurrencyTypeController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CurrencyType.list(params), model:[currencyTypeInstanceCount: CurrencyType.count()]
    }

    def show(CurrencyType currencyTypeInstance) {
        respond currencyTypeInstance
    }

    def create() {
        respond new CurrencyType(params)
    }

    @Transactional
    def save(CurrencyType currencyTypeInstance) {
        if (currencyTypeInstance == null) {
            notFound()
            return
        }

        if (currencyTypeInstance.hasErrors()) {
            respond currencyTypeInstance.errors, view:'create'
            return
        }

        currencyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'currencyType.label', default: 'CurrencyType'), currencyTypeInstance.id])
                redirect currencyTypeInstance
            }
            '*' { respond currencyTypeInstance, [status: CREATED] }
        }
    }

    def edit(CurrencyType currencyTypeInstance) {
        respond currencyTypeInstance
    }

    @Transactional
    def update(CurrencyType currencyTypeInstance) {
        if (currencyTypeInstance == null) {
            notFound()
            return
        }

        if (currencyTypeInstance.hasErrors()) {
            respond currencyTypeInstance.errors, view:'edit'
            return
        }

        currencyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CurrencyType.label', default: 'CurrencyType'), currencyTypeInstance.id])
                redirect currencyTypeInstance
            }
            '*'{ respond currencyTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CurrencyType currencyTypeInstance) {

        if (currencyTypeInstance == null) {
            notFound()
            return
        }

        currencyTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CurrencyType.label', default: 'CurrencyType'), currencyTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'currencyType.label', default: 'CurrencyType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
