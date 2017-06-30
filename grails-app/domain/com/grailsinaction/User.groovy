package com.grailsinaction

class User {
    String loginId
    String password
    String homepage
    Date dateCreated
    String toString() { return "User $loginId (ID: $id)" }
    static hasOne = [ profile : Profile ]
    static hasMany = [ posts : Post, tags : Tag, following : User ]
}