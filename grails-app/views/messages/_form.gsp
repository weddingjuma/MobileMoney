<%@ page import="mobilemoney.core.Messages" %>



<div class="fieldcontain ${hasErrors(bean: messagesInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="messages.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${mobilemoney.core.Account.list()}" optionKey="id" required="" value="${messagesInstance?.account?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messagesInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="messages.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mobilemoney.core.Users.list()}" optionKey="id" required="" value="${messagesInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messagesInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="messages.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${messagesInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messagesInstance, field: 'messageDirection', 'error')} required">
	<label for="messageDirection">
		<g:message code="messages.messageDirection.label" default="Message Direction" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="messageDirection" from="${mobilemoney.enums.MessageDirection?.values()}" keys="${mobilemoney.enums.MessageDirection.values()*.name()}" required="" value="${messagesInstance?.messageDirection?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: messagesInstance, field: 'dateLogged', 'error')} required">
	<label for="dateLogged">
		<g:message code="messages.dateLogged.label" default="Date Logged" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateLogged" precision="day"  value="${messagesInstance?.dateLogged}"  />

</div>

