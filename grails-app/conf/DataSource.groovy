grails {
    mongo {
        host = "localhost"
        port = 27017
        databaseName = "vtr"
    }
}

environments {
    development {
        mongo {
            databaseName ="vtr"
        }
    }
    test {
        mongo {
            databaseName ="test"
        }
    }
    production {
        mongo {
            databaseName ="prod"
        }
    }
}
