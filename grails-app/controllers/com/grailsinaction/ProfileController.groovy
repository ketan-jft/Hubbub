package com.grailsinaction



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.lang.*

@Transactional(readOnly = true)
class ProfileController {
//    static scaffold =true
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Profile.list(params), model:[profileInstanceCount: Profile.count()]
    }

    def show(Profile profileInstance) {
        respond profileInstance
    }

    def create() {
        respond new Profile(params)
    }
    @Transactional
    def save(Profile profileInstance) {
        if (profileInstance == null) {
            notFound()
            return
        }

        if (profileInstance.hasErrors()) {
            respond profileInstance.errors, view:'create'
            return
        }

        profileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profile.label', default: 'Profile'), profileInstance.id])
                redirect profileInstance
            }
            '*' { respond profileInstance, [status: CREATED] }
        }
    }

    def edit(Profile profileInstance) {
        respond profileInstance
    }

    @Transactional
    def update(Profile profileInstance) {
        if (profileInstance == null) {
            notFound()
            return
        }

        if (profileInstance.hasErrors()) {
            respond profileInstance.errors, view:'edit'
            return
        }

        profileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profile.label', default: 'Profile'), profileInstance.id])
                redirect profileInstance
            }
            '*'{ respond profileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Profile profileInstance) {

        if (profileInstance == null) {
            notFound()
            return
        }

        profileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profile.label', default: 'Profile'), profileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profile.label', default: 'Profile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def pic() {
        response.setHeader 'Content-Type', 'image/jpg'
        response.outputStream.withStream {it << Profile.findById(params.id).photo}
    }

    def search() {}
    def results() {
        def profileProps = Profile.metaClass.properties.name
    def profiles = Profile.withCriteria {
        "${params.queryType}" {
            params.each { field, value ->
                if (profileProps.contains(field) && value) {
                    ilike field, "%${value}%"
                }
            }
        }
    }
    return [ profiles : profiles ]
}
}