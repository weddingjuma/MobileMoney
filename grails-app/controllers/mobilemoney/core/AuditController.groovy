package mobilemoney.core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AuditController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Audit.list(params), model:[auditInstanceCount: Audit.count()]
    }

    def show(Audit auditInstance) {
        respond auditInstance
    }

    def create() {
        respond new Audit(params)
    }

    @Transactional
    def save(Audit auditInstance) {
        if (auditInstance == null) {
            notFound()
            return
        }

        if (auditInstance.hasErrors()) {
            respond auditInstance.errors, view:'create'
            return
        }

        auditInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'audit.label', default: 'Audit'), auditInstance.id])
                redirect auditInstance
            }
            '*' { respond auditInstance, [status: CREATED] }
        }
    }

    def edit(Audit auditInstance) {
        respond auditInstance
    }

    @Transactional
    def update(Audit auditInstance) {
        if (auditInstance == null) {
            notFound()
            return
        }

        if (auditInstance.hasErrors()) {
            respond auditInstance.errors, view:'edit'
            return
        }

        auditInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Audit.label', default: 'Audit'), auditInstance.id])
                redirect auditInstance
            }
            '*'{ respond auditInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Audit auditInstance) {

        if (auditInstance == null) {
            notFound()
            return
        }

        auditInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Audit.label', default: 'Audit'), auditInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'audit.label', default: 'Audit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
