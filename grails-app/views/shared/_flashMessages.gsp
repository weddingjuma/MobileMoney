<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:if test="${flash.error}">
    <div class="message_error" role="status">${flash.error}</div>
</g:if>