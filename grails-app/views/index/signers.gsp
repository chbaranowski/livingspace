<%@ page import="livingspace.Signer" %>

<body>

<div class="span6">
    <div class="hero-unit">
        <h1>Unterzeichner</h1>

        <p>Insgesamt wurde die Initiative von <strong>${signerCount}</strong> Familien aus Konstanz unterzeichnet.
        Bisher haben öffentlich folgenden Familien die Initiative unterzeichnet.
        </p>
        <g:if test="${signerCount > 0}">
            <table class="table">
                <thead>
                <tr>
                    <th>Familienname</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${publicSignerList}" status="index" var="signer">
                    <tr>
                        <td id="signer-name-${index}">
                            <i class="icon-ok-sign"></i>
                            ${fieldValue(bean: signer, field: "name")}
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </g:if>
    </div>
</div>

<div class="span6">
    <div class="hero-unit">
        <h1>Untertützer</h1>

        <p>Insgesamt wird die Initiative von <strong>${supporterCount}</strong> Personen oder Firmen unterstützt.
        Bisher haben öffentlich die folgenden Untertützer die Initiative unterzeichnet.</p>

        <g:if test="${supporterCount > 0}">
            <table class="table">
                <thead>
                <tr>
                    <th>Untertützer</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${publicSupporterList}" status="index" var="supporter">
                    <tr>
                        <td id="supporter-name-${index}">
                            <i class="icon-ok-sign"></i>
                            ${fieldValue(bean: supporter, field: "name")}
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </g:if>
    </div>
</div>

</body>