package livingspace

class Tabs implements Serializable
{
    String activeTabName

    class Tab
    {
        String name

        def isActive()
        {
            name == activeTabName
        }

        def markAsActive()
        {
            activeTabName = name
        }
    }

    def signerTab = new Tab(name: 'signer')

    def supporterTab = new Tab(name: 'supporter')
}
