package livingspace

import org.springframework.scheduling.annotation.Async

class NotificationService
{

    def mailService

    @Async
    void notifyNewSigner(Signer signer)
    {
        mailService.sendMail {
            subject "[Livingspace] Neuer Unterzeichner - ${signer.name}"
            body(view: "/mail/signerRequest",
                    plugin: "email-confirmation",
                    model: [signer: signer])
        }
    }

    @Async
    void notifyNewSupporter(Supporter supporter)
    {
        mailService.sendMail {
            subject "[Livingspace] Neuer Unterstützer - ${supporter.name}"
            body(view: "/mail/supporterRequest",
                    plugin: "email-confirmation",
                    model: [supporter: supporter])
        }
    }

}
