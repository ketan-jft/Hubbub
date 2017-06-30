package com.grailsinaction

import spock.lang.*

class UserIntegrationSpec extends Specification {

    def "Saving our first user to the database"() {
        given: "A brand new user"
        def joe = new User(loginId: 'ketan001', password: 'secret',
                homepage: 'http://www.grailsinaction.com')

        when: "the user is saved"
        joe.save()
        then: "it saved successfully and can be found in the database"
        joe.errors.errorCount == 0
        joe.id != null
        User.get(joe.id).loginId == joe.loginId
    }
}
