
<%@ page import="mobilemoney.core.Messages" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'messages.label', default: 'Messages')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-messages" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-messages" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list messages">
			
				<g:if test="${messagesInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="messages.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${messagesInstance?.account?.id}">${messagesInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${messagesInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="messages.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="users" action="show" id="${messagesInstance?.user?.id}">${messagesInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${messagesInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="messages.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${messagesInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${messagesInstance?.messageDirection}">
				<li class="fieldcontain">
					<span id="messageDirection-label" class="property-label"><g:message code="messages.messageDirection.label" default="Message Direction" /></span>
					
						<span class="property-value" aria-labelledby="messageDirection-label"><g:fieldValue bean="${messagesInstance}" field="messageDirection"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${messagesInstance?.dateLogged}">
				<li class="fieldcontain">
					<span id="dateLogged-label" class="property-label"><g:message code="messages.dateLogged.label" default="Date Logged" /></span>
					
						<span class="property-value" aria-labelledby="dateLogged-label"><g:formatDate date="${messagesInstance?.dateLogged}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:messagesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${messagesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
