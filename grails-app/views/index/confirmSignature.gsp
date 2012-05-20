<%@ page import="livingspace.Signer" %>
<body>

<div class="showWhenJsActive" style="display: none;">
    <g:render template="manifest"/>
    <g:render template="sidebar"/>
</div>

<script type="text/javascript">
    $('#sign-confirm-modal').ready(function ()
    {
        $('#sign-confirm-modal').hide()
        $('#sign-confirm-modal').addClass('fade')
        $('#sign-confirm-modal').modal({show:true})
    })
</script>

<div class="modal" id="sign-confirm-modal">
    <div class="modal-header">
        <h2>Unterschrift Angaben bestätigen</h2>
    </div>

    <div class="modal-body">
        <p>Soll die Unterschrift mit den folgenden Daten gespeichert werden?</p>

        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Name</strong></td>
                <td>${signer.name}</td>
            </tr>
            <tr>
                <td><strong>E-Mail</strong></td>
                <td>${signer.email}</td>
            </tr>
            </tbody>
        </table>
        <hr/>

        <h3>Öffentliche Unterschrift</h3>

        <p>
            Darf der Name der Unterschrift öffentlich auf der Website angezeigt werden?
            Die anderen Daten wie E-Mail oder Beschreibung der Wohnsituation werden <strong>nicht</strong> öffentlich
        zugänglich gemacht.
        </p>
        <g:if test="${signer.publicSigner}">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        <a class="btn-success btn-small">
                            <i class="icon-ok icon-white"></i>
                        </a>
                    </th>
                    <th>
                        Die Unterschrift wird öffentlich angezeigt!
                    </th>
                </tr>
                </thead>
            </table>
        </g:if>
        <g:else>
            <table class="table">
                <thead>
                <tr>
                    <th>
                        <a class="btn-danger btn-small">
                            <i class="icon-remove icon-white"></i>
                        </a>
                    </th>
                    <th>
                        Die Unterschrift wird nicht öffentlich angezeigt.
                    </th>
                </tr>
                </thead>
            </table>
        </g:else>
        <hr/>

        <h3>Optionale Angaben</h3>

        <p>
            Neben den verprichtenden Angabe zur Untschrift können weitere Angaben gemacht werden, diese werden von der Intiative
            intern genutzt um die Wohnsituation der einzelnen Unterzeichner besser einschätzen zu können.
        </p>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Elternteile berufstätig?</strong></td>
                <td>${signer.working ? 'keine Angaben' : 'Ja'}</td>
            </tr>
            <tr>
                <td><strong>Anzahl Kinder</strong></td>
                <td>${signer.numberOfChildren == 0 ? 'keine Angaben' : signer.numberOfChildren}</td>
            </tr>
            <tr>
                <td><strong>Beschreibung <br/> der Wohnsituation</strong></td>
                <td>${signer.description}</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="modal-footer">
        <g:form controller="index" action="sign" method="post">
            <g:hiddenField name="name" value="${signer.name}"/>
            <g:hiddenField name="email" value="${signer.email}"/>
            <g:hiddenField name="publicSigner" value="${signer.publicSigner}"/>
            <g:hiddenField name="description" value="${signer.description}"/>
            <g:hiddenField name="numberOfChildren" value="${signer.numberOfChildren}"/>

            <g:submitButton name="Unterzeichnen" class="btn btn-large btn-success"/>
        </g:form>
    </div>
</div>

</body>