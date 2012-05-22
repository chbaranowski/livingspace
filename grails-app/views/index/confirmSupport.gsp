<%@ page import="livingspace.Signer" %>
<body>

<div class="showWhenJsActive" style="display: none;">
    <g:render template="manifest"/>
    <g:render template="sidebar"/>
</div>

<script type="text/javascript">
    $('#support-confirm-modal').ready(function ()
    {
        $('#support-confirm-modal').hide()
        $('#support-confirm-modal').addClass('fade')
        $('#support-confirm-modal').modal({show:true})
    })
</script>


<div class="modal" id="support-confirm-modal">
    <div class="modal-header">
        <h2>Unterstützung Angaben bestätigen</h2>
    </div>

    <div class="modal-body">
        <p>Darf die Unterstützung der Initiative mit den folgenden Daten gespeichert werden?</p>

        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Name</strong></td>
                <td>${supporter.name}</td>
            </tr>
            <tr>
                <td><strong>E-Mail</strong></td>
                <td>${supporter.email}</td>
            </tr>
            </tbody>
        </table>
        <hr/>

        <h3>Öffentliche Unterstützung</h3>

        <p>
            Darf der Name dieser Unterstützung öffentlich auf unserer Website angezeigt werden?
        </p>
        <g:if test="${supporter.publicSupporter}">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        <a class="btn-success btn-small">
                            <i class="icon-ok icon-white"></i>
                        </a>
                    </th>
                    <th>
                        Die Unterstützung wird öffentlich angezeigt!
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
                        Die Unterstützung wird nicht öffentlich angezeigt.
                    </th>
                </tr>
                </thead>
            </table>
        </g:else>
        <hr/>

        <h3>Optionale Angaben</h3>

        <p>
            Neben den verprichtenden Angabe zur Unterstützung können weitere Angaben gemacht werden, diese werden von der Intiative
            intern genutzt um die Hintergründe der einzelnen Unterstützung auswerten zu können.
        </p>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Beschreibung</strong></td>
                <td>${supporter.description}</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="modal-footer">
        <g:form controller="index" method="post">
            <g:hiddenField name="name" value="${supporter.name}" />
            <g:hiddenField name="email" value="${supporter.email}" />
            <g:hiddenField name="publicSupporter" value="${supporter.publicSupporter}" />
            <g:hiddenField name="description"  value="${supporter.description}" />
            <g:actionSubmit action="cancelConfirmSupport" value="Zurück" class="btn btn-large btn-danger"/>
            <g:actionSubmit action="support" value="Unterstützen" class="btn btn-large btn-success"/>
        </g:form>
    </div>
</div>

</body>