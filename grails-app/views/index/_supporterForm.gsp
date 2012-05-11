<g:form action="validateSupporter" class="form-horizontal">

    <bootstrap:controlGroup bean="${supporter}" name="name" label="Name*">
        <g:textField name="name" value="${supporter?.name}" class="span4 popover-info"
                     data-original-title="Name muss angegeben werden."
                     data-content="Du kannst allerdings entscheiden ob der Name
                                   öffentlich auf dieser Web-Seite angezeigt werden darf."
        />
    </bootstrap:controlGroup>

    <div class="control-group">
        <div class="controls">
            <label class="checkbox" for="publicSupporter">
                <g:checkBox name="publicSupporter" value="${supporter? supporter.publicSupporter : true}"/>
                Darf die Unterstützung öffentlich auf unserer Website durch Deinem Namen angezeigt werden?
            </label>
        </div>
    </div>

    <bootstrap:controlGroup bean="${supporter}" name="email" label="E-Mail*">
        <g:textField name="email" value="${supporter?.email}" class="span4 popover-info"
                     data-original-title="E-Mail muss angegeben werden."
                     data-content=" Wir nutzen die E-Mail um sicherzustellen dass es nicht zu doppelten Unterstützern kommt.
                            Deine E-Mail wird von uns genutzt um Dich ggf. mit Dir Kontakt aufzunehmen.
                            Wir geben die E-Mail nicht an dritte weiter."
        />
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