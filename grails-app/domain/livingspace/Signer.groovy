package livingspace

class Signer
{

    String name

    String email

    Boolean publicSigner = false

    String description

    int numberOfChildren

    Boolean unlocked = false

    static constraints = {

        name blank: false

        email blank: false, email: true, unique: true

        description maxSize: 2048, blank: true

        numberOfChildren blank: true
    }
}
