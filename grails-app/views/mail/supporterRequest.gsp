<%@ page contentType="text/html" %>
<html>
<body>
<h3>Infos</h3>
<table>
    <tr>
        <td>Name:</td>
        <td>${supporter.name}</td>
    </tr>
    <tr>
        <td>E-Mail:</td>
        <td>${supporter.email}</td>
    </tr>
</table>
<a href="http://localhost:8080/livingspace/supporter/show/${supporter.id}">mehr</a>

<h3>Freischalten</h3>
<p>
    <a href="http://localhost:8080/livingspace/admin/unlockSupporter/${supporter.id}">Freischalten</a>
</p>

</body>
</html>