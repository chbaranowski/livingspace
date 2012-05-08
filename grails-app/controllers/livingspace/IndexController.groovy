package livingspace

class IndexController
{

    static layout = "bootstrap"

    def index()
    {
        getDefaultModel()
    }

    def validateSignature()
    {
        def signer = new Signer(params)
        def model = getDefaultModel()
        model.tabs.signerTab.markAsActive()
        model.signer = signer
        if (signer.validate())
        {
            chain(action: 'confirmSignature', model: model)
        }
        else
        {
            render(view: 'index', model: model)
        }
    }

    def confirmSignature()
    {
        if (!chainModel)
        {
            redirect(action: 'index')
        }
    }

    def sign()
    {
        def signer = new Signer(params)
        if (signer.save(flush: true))
        {
            redirect(action: "index")
        }
    }

    def validateSupporter()
    {
        def supporter = new Supporter(params)
        def model = getDefaultModel()
        model.tabs.supporterTab.markAsActive()
        model.supporter = supporter
        if (supporter.validate())
        {
            chain(action: 'confirmSupport', model: model)
        }
        else
        {
            render(view: 'index', model: model)
        }
    }

    def confirmSupport()
    {
        if (!chainModel)
        {
            redirect(action: 'index')
        }
    }

    def support()
    {
        def support = new Supporter(params)
        if (support.save(flush: true))
        {
            redirect(action: "index")
        }
    }

    def getDefaultModel()
    {
        [
                signer: null,
                supporter: null,
                tabs: new Tabs(activeTabName: params['active.tab'] ? params['active.tab'] : 'signer'),
                publicSignerList: Signer.findAllByPublicSignerAndUnlocked(true, true, [max: 5]),
                signerCount: Signer.countByUnlocked(true),
                publicSupporterList: Supporter.findAllByPublicSupporterAndUnlocked(true, true, [max: 5]),
                supporterCount: Supporter.countByUnlocked(true)
        ]
    }

    def signers()
    {
        [
                publicSignerList: Signer.findAllByPublicSignerAndUnlocked(true, true, [max: 50000]),
                signerCount: Signer.countByUnlocked(true),
                publicSupporterList: Supporter.findAllByPublicSupporterAndUnlocked(true, true, [max: 50000]),
                supporterCount: Supporter.countByUnlocked(true)
        ]
    }

    def impressum()
    {
    }

}