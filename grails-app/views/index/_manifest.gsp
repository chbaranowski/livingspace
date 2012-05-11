<div class="span9">

    <g:hasErrors>
        <div class="alert alert-block alert-error fade in">
            <h4 class="alert-heading">Beim Speichern der Unterschrift sind Fehler aufgetretten.</h4>
            <p>Die folgenden Angaben müssen verbessert werden:</p>
            <ul>
                <g:eachError bean="${signer}">
                    <li><g:message error="${it}"/></li>
                </g:eachError>
                <g:eachError bean="${supporter}">
                    <li><g:message error="${it}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:if test="${createdSigner}">
        <div class="alert alert-block alert-success fade in">
            <h4 class="alert-heading">Unterschirft wurde erfolgreich gespeichert</h4>
            <p>
                Die Unterschrift wird nun von uns geprüft und in den nächsten Stunden freigeschalten. <br/>
                Nach der Freischaltung schicken wir Dir eine E-Mail an '${createdSigner.email}'.
            </p>
        </div>
    </g:if>

    <g:if test="${createdSupporter}">
        <div class="alert alert-block alert-success fade in">
            <h4 class="alert-heading">Unterstützung wurde erfolgreich gespeichert</h4>
            <p>
                Die Unterstützung wird nun von uns geprüft und in den nächsten Stunden freigeschaltet. <br/>
                Nach der Freischaltung schicken wir Dir eine E-Mail an '${createdSupporter.email}'.
            </p>
        </div>
    </g:if>

    <h1>Wohnraum in Konstanz
        <small>für Familien und Kinder</small>
    </h1>

    <div class="well-large">
        <h1>Wir fordern</h1>

        <h2>Genügend bezahlbaren Wohnraum!</h2>

        <h3>Eine bedürfnisorientierte Stadtplanung, frei von kapitalistischer bzw. wirtschaftlicher Verwertungslogik!</h3>

        <h2>Konstanz muss bewohnbar werden – für alle!</h2>

        <h3>Basisdemokratische Entscheidungsfindung bei stadtplanerischen Belangen!</h3>

        <h2>Genügend bezahlbaren Wohnraum!</h2>

        <h3>Eine bedürfnisorientierte Stadtplanung, frei von kapitalistischer bzw. wirtschaftlicher Verwertungslogik!</h3>

        <h2>Konstanz muss bewohnbar werden – für alle!</h2>

        <h3>Basisdemokratische Entscheidungsfindung bei stadtplanerischen Belangen!</h3>
    </div>

    <g:render template="tabs"></g:render>

</div>