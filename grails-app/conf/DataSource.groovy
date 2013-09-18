grails {
    mongo {
        host = "localhost"
        port = 27017
        databaseName = "dev"
    }
}

environments {
    development {
        mongo {
            dbCreate = "create-drop"
            databaseName ="dev"
        }
    }
    test {
        mongo {
            dbCreate = "update"
            databaseName ="test"
        }
    }
    production {
        mongo {
            dbCreate = "update"
            databaseName ="prod"
        }
    }
}
