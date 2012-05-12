<body>

<div class="row-fluid">

    <div class="span12">
        <div class="row-fluid">
            <h2>Unterzeichner Freischalten</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>Familienname</th>
                    <th>E-Mail</th>
                    <th>Beschreibung der Situation</th>
                    <th>Anzahl Kinder</th>
                    <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${publicSignerList}" status="index" var="signer">
                    <tr>
                        <td id="signer-name-${index}">
                            ${fieldValue(bean: signer, field: "name")}
                        </td>
                        <td id="signer-email-${index}">
                            ${fieldValue(bean: signer, field: "email")}
                        </td>
                        <td id="signer-description-${index}">
                            ${fieldValue(bean: signer, field: "description")}
                        </td>
                        <td id="signer-numberOfChildren-${index}">
                            <g:if test="${signer.numberOfChildren == 0}">
                                Keine Angabe
                            </g:if>
                            <g:else>
                                ${fieldValue(bean: signer, field: "numberOfChildren")}
                            </g:else>
                        </td>
                        <td>
                            <g:link controller="signer" action="show" id="${fieldValue(bean: signer, field: "id")}"
                                    class="icon-edit"/>
                            <g:link params="${[id: signer.id]}" class="icon-ok" action="unlockSigner"/>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <h2>Unterstützer Freischalten</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>E-Mail</th>
                    <th>Beschreibung</th>
                    <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${publicSupporterList}" status="index" var="supporter">
                    <tr>
                        <td id="signer-name-${index}">
                            ${fieldValue(bean: supporter, field: "name")}
                        </td>
                        <td id="signer-email-${index}">
                            ${fieldValue(bean: supporter, field: "email")}
                        </td>
                        <td id="signer-description-${index}">
                            ${fieldValue(bean: supporter, field: "description")}
                        </td>
                        <td>
                            <g:link controller="supporter" action="show" id="${fieldValue(bean: supporter, field: "id")}" class="icon-edit"/>
                            <g:link params="${[id: supporter.id]}" class="icon-ok" action="unlockSupporter"/>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
