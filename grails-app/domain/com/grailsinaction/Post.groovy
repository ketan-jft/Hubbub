package com.grailsinaction

class Post {
    String content
    Date dateCreated
    static belongsTo = [ user : User ]
    static hasMany = [tags : Tag]
}