package web

import org.bson.types.ObjectId

class Schedule {
    ObjectId id
    Date start
    Integer duration
    String minificha
    String ficha
    Shortcut prog
    Shortcut chn
    static constraints = {
        start()
        duration()
        minificha()
        ficha()
        prog()
        chn()
    }

    static embedded = ['prog','chn']

    static mapping = {
        collection "schedules"
    }
}

class Shortcut {
    String cod
    String name

    static mapping = {
        version false
        autoTimestamp false
    }

    @Override
    public String toString(){
        return name
    }

}
