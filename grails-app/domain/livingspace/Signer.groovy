package livingspace

class Signer implements Serializable
{

    String name

    String email

    Boolean publicSigner = false

    String description

    int numberOfChildren

    Boolean working = false

    Boolean unlocked = false

    static mapping = {
        description type: 'text'
    }

    static constraints = {

        name blank: false

        email blank: false, email: true, unique: true

        description maxSize: 2048, blank: true

        numberOfChildren blank: true

    }
}
