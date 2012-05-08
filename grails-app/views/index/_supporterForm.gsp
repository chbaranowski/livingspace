<g:form action="validateSupporter" class="form-horizontal">

    <bootstrap:controlGroup bean="${supporter}" name="name" label="Name*">
        <g:textField name="name" value="${supporter?.name}" class="span4"/>
    </bootstrap:controlGroup>

    <div class="control-group">
        <div class="controls">
            <label class="checkbox" for="publicSupporter">
                <g:checkBox name="publicSupporter" value="${supporter?.publicSupporter}"/>
                Darf die Unterstützung öffentlich auf unserer Website durch Deinem Namen angezeigt werden?
            </label>
        </div>
    </div>

    <bootstrap:controlGroup bean="${supporter}" name="email" label="E-Mail*">
        <g:textField name="email" value="${supporter?.email}" class="span4"/>
    </bootstrap:controlGroup>

    <bootstrap:controlGroup bean="${supporter}" name="description" label="Beschreibung">
        <g:textArea class="input-xlarge" cols="3" rows="5" name="description" value="${supporter?.description}"/>
    </bootstrap:controlGroup>

    <div class="control-group">
        <div class="controls">
            <g:submitButton name="Unterstützen" class="btn btn-large btn-primary" title="Unterstützen"/>
        </div>
    </div>
</g:form>