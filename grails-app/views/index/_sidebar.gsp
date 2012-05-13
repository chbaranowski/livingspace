<div class="span3">
        <h2>Unterzeichner</h2>

        <p>
            Momentan haben <strong>${signerCount}</strong> Familien die Initiavte unterzeichnet.
        </p>

        <g:if test="${signerCount > 0}">
            <table class="table">
                <tbody>
                <g:each in="${publicSignerList}" status="index" var="signer">
                    <tr>
                        <td id="signer-name-${index}">
                            <i class="icon-ok-sign"></i>
                            ${fieldValue(bean: signer, field: "name")}
                        </td>
                    </tr>
                </g:each>
                <g:if test="${signerCount > 5}">
                    <tr>
                        <td><g:link action="signers">Alle Unterzeichner anzeigen</g:link></td>
                    </tr>
                </g:if>
                </tbody>
            </table>
        </g:if>


        <h2>Unterstützer</h2>

        <p>Momentan gibt es <strong>${supporterCount}</strong> Unterstützer für die Initiavte.</p>

        <g:if test="${supporterCount > 0}">
            <table class="table">
                <tbody>
                <g:each in="${publicSupporterList}" status="index" var="supporter">
                    <tr>
                        <td id="supporter-name-${index}">
                            <i class="icon-ok-sign"></i>
                            ${fieldValue(bean: supporter, field: "name")}
                        </td>
                    </tr>
                </g:each>
                <g:if test="${supporterCount > 5}">
                    <tr>
                        <td><g:link action="signers">Alle Unterstützer anzeigen</g:link></td>
                    </tr>
                </g:if>
                </tbody>
            </table>
        </g:if>
</div>