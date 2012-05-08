<g:form action="validateSignature" class="form-horizontal" method="post">

    <bootstrap:controlGroup bean="${signer}" name="name" label="Familienname*">
        <g:textField name="name" value="${signer?.name}" class="span4"/>
    </bootstrap:controlGroup>

    <div class="control-group">
        <div class="controls">
            <label class="checkbox" for="publicSigner">
                <g:checkBox name="publicSigner" value="${signer?.publicSigner}"/>
                Darf die Unterschrift öffentlich auf unserer Website mit Deinem Familienname angezeigt werden?
            </label>
        </div>
    </div>

    <bootstrap:controlGroup bean="${signer}" name="email" label="E-Mail*">
        <g:textField name="email" value="${signer?.email}" class="span4"/>
    </bootstrap:controlGroup>

    <bootstrap:controlGroup bean="${signer}" name="numberOfChildren" label="Anzahl Kinder">
        <g:select name="numberOfChildren" from="${1..6}" value="${signer?.numberOfChildren}"
                  noSelection="[0: '- Keine Angabe -']"/>
    </bootstrap:controlGroup>

    <bootstrap:controlGroup bean="${signer}" name="description" label="Beschreibung Wohnungssituation">
        <g:textArea class="input-xlarge" cols="3" rows="5" name="description" value="${signer?.description}"/>
    </bootstrap:controlGroup>

    <div class="control-group">
        <div class="controls">
            <g:submitButton name="Unterzeichnen" class="btn btn-large btn-primary" title="Unterzeichnen"/>
        </div>
    </div>
</g:form>