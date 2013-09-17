package web

import org.bson.types.ObjectId

class Schedule {
    ObjectId id
    Shortcut prog
    Shortcut chn
    Date start
    Integer duration
    String minificha
    String ficha
    static constraints = {
    }

    static embedded = ['prog','chn']

    static mapping = {
        collection "schedules"
    }
}
