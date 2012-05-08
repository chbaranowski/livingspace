<div class="control-group ${hasErrors(bean: bean, field: name, 'error')}">
    <label class="control-label" for="${name}">
        ${label}
    </label>

    <div class="controls">
        ${renderChildren()}
        <g:if test="${bean && bean.errors.hasFieldErrors(name)}">
            <span class="help-inline">
                <g:message error="${bean.errors.getFieldError(name)}"/>
            </span>
        </g:if>
    </div>
</div>