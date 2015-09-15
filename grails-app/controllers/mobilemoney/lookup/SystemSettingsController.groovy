package mobilemoney.lookup



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemSettingsController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemSettings.list(params), model:[systemSettingsInstanceCount: SystemSettings.count()]
    }

    def show(SystemSettings systemSettingsInstance) {
        respond systemSettingsInstance
    }

    def create() {
        respond new SystemSettings(params)
    }

    @Transactional
    def save(SystemSettings systemSettingsInstance) {
        if (systemSettingsInstance == null) {
            notFound()
            return
        }

        if (systemSettingsInstance.hasErrors()) {
            respond systemSettingsInstance.errors, view:'create'
            return
        }

        systemSettingsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemSettings.label', default: 'SystemSettings'), systemSettingsInstance.id])
                redirect systemSettingsInstance
            }
            '*' { respond systemSettingsInstance, [status: CREATED] }
        }
    }

    def edit(SystemSettings systemSettingsInstance) {
        respond systemSettingsInstance
    }

    @Transactional
    def update(SystemSettings systemSettingsInstance) {
        if (systemSettingsInstance == null) {
            notFound()
            return
        }

        if (systemSettingsInstance.hasErrors()) {
            respond systemSettingsInstance.errors, view:'edit'
            return
        }

        systemSettingsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemSettings.label', default: 'SystemSettings'), systemSettingsInstance.id])
                redirect systemSettingsInstance
            }
            '*'{ respond systemSettingsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemSettings systemSettingsInstance) {

        if (systemSettingsInstance == null) {
            notFound()
            return
        }

        systemSettingsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemSettings.label', default: 'SystemSettings'), systemSettingsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemSettings.label', default: 'SystemSettings'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
