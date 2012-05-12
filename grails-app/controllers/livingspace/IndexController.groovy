package livingspace

class IndexController
{

    static layout = "livingspace"

    static allowedMethods = [
            validateSignature: 'POST',
            validateSupporter: 'POST',
            sign: 'POST',
            support: 'POST'
    ]

    def index()
    {
        if (chainModel)
        {
            chainModel
        }
        else
        {
            getDefaultModel()
        }
    }

    def validateSignature()
    {
        def signer = new Signer(params)
        signer.email = signer.email.toLowerCase()
        def model = getDefaultModel()
        model.tabs.signerTab.markAsActive()
        model.signer = signer
        if (signer.validate())
        {
            chain(action: 'confirmSignature', model: model)
        }
        else
        {
            chain(action: 'index', model: model)
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
        def model = getDefaultModel()
        if (signer.save(flush: true))
        {
            model.createdSigner = signer
        }
        else
        {
            model.tabs.signerTab.markAsActive()
            model.signer = signer
        }
        chain(action: "index", model: model)
    }

    def validateSupporter()
    {
        def supporter = new Supporter(params)
        supporter.email = supporter.email.toLowerCase()
        def model = getDefaultModel()
        model.tabs.supporterTab.markAsActive()
        model.supporter = supporter
        if (supporter.validate())
        {
            chain(action: 'confirmSupport', model: model)
        }
        else
        {
            chain(action: 'index', model: model)
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
        def model = getDefaultModel()
        if (support.save(flush: true))
        {
            model.createdSupporter = support
        }
        else
        {
            model.tabs.supporterTab.markAsActive()
            model.supporter = support
        }
        chain(action: "index", model: model)
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