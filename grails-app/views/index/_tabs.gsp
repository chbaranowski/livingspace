<div class="tabbable well-large">
    <ul id="sign-tabs" class="nav nav-tabs">
        <li class="${tabs.signerTab.isActive() ? 'active' : ''}">
            <a href="index?active.tab=signer#sign-tab">Unterzeichnen</a>
        </li>
        <li class="${tabs.supporterTab.isActive() ? 'active' : ''}">
            <a href="index?active.tab=supporter#supporter-tab">Unterstützen</a>
        </li>
    </ul>

    <div class="tab-content">
        <div id="sign-tab" class="tab-pane ${tabs.signerTab.isActive() ? 'active' : ''}">
            <g:render template="signerForm"/>
        </div>

        <div id="supporter-tab" class="tab-pane ${tabs.supporterTab.isActive() ? 'active' : ''}">
            <g:render template="supporterForm"/>
        </div>
    </div>
</div>