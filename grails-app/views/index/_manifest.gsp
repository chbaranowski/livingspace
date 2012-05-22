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
                Die Unterschrift wird nun von uns geprüft und in den nächsten Stunden freigeschalten.
            </p>
        </div>
    </g:if>

    <g:if test="${createdSupporter}">
        <div class="alert alert-block alert-success fade in">
            <h4 class="alert-heading">Unterstützung wurde erfolgreich gespeichert</h4>

            <p>
                Die Unterstützung wird nun von uns geprüft und in den nächsten Stunden freigeschaltet.
            </p>
        </div>
    </g:if>

    <h1>Wohnraum in Konstanz
        <small>für Familien und Kinder</small>
    </h1>

    <div class="well-large">
        <h2>Wir sind eine Familie</h2>
        <p>Wir haben oder wünschen uns Kinder.</p>

        <h2>Leben und arbeiten in Konstanz</h2>
        <p>Unser Lebensmittelpunkt und Arbeitsstelle ist in Konstanz und Umgebung.</p>

        <h2>Konstanz ist unsere Heimat</h2>
        <p>Unsere Heimat ist hier und hier möchten wir bleiben.</p>

        <h2>Wir brauchen Wohnraum für Familien in Konstanz</h2>
        <p> Für eine Zukunft für die Stadt Konstanz muss genügend passender Wohnraum und Lebensraum
            für Kindern und Familien vorhanden sein. Eine langfristige Zukunft für Kinder in Konstanz...
            TODO - Text
        </p>
    </div>

    <div class="well-large">
        <h2>Was wollen wir erreichen?</h2>
        <p>
            TODO Beschreibung unserer Ziele.
        </p>
        <h2>Wer sind wir?</h2>
        <p>
            TODO Beschreibung wer steckt hinter der Intiative
        </p>
        <h2>Unterzeichner und Unterstützer</h2>
        <p>
            TODO Beschreibung wer steckt hinter der Intiative
        </p>
    </div>

    <script type="text/javascript" src="js/facebook.js"></script>

    <g:render template="tabs"></g:render>

</div>