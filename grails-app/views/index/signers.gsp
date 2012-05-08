<%@ page import="livingspace.Signer" %>

<body>

<div class="span6">
    <div class="row-fluid">
        <h2>Unterzeichner</h2>
        <hr>

        <p>Insgesamt wurde die Initiative von <strong>${signerCount}</strong> Familien aus Konstanz unterzeichnet.</p>

        <p>Bisher haben öffentlich folgenden Familien die Initiative unterzeichnet.</p>
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
                        <i class=" icon-pencil"></i>
                        ${fieldValue(bean: signer, field: "name")}
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>

<div class="span6">
    <div class="row-fluid">
        <h2>Untertützer</h2>
        <hr>

        <p>Insgesamt wird die Initiative von <strong>${supporterCount}</strong> Personen oder Firmen unterstützt.</p>

        <p>Bisher haben öffentlich die folgenden Untertützer die Initiative unterzeichnet.</p>
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
                        <i class=" icon-pencil"></i>
                        ${fieldValue(bean: supporter, field: "name")}
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

</body>