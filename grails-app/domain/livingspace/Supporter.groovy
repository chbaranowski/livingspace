package livingspace

class Supporter implements Serializable
{

    String name

    String description

    String email

    Boolean publicSupporter = false

    Boolean unlocked = false

    static mapping = {
        description type: 'text'
    }

    static constraints = {

        name blank: false

        description blank: true, maxSize: 2048

        email blank: false, email: true, unique: true

    }

}
