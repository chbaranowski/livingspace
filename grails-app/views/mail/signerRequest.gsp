<%@ page contentType="text/html" %>
<html>
<body>
<h3>Infos</h3>
<table>
    <tr>
        <td>Name:</td>
        <td>${signer.name}</td>
    </tr>
    <tr>
        <td>E-Mail:</td>
        <td>${signer.email}</td>
    </tr>
</table>
<a href="http://localhost:8080/livingspace/signer/show/${signer.id}">mehr</a>

<h3>Freischalten</h3>
<p>
    <a href="http://localhost:8080/livingspace/admin/unlockSigner/${signer.id}">Freischalten</a>
</p>

</body>
</html>