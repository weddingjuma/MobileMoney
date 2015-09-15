
<%@ page import="mobilemoney.core.Messages" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'messages.label', default: 'Messages')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-messages" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-messages" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="messages.account.label" default="Account" /></th>
					
						<th><g:message code="messages.user.label" default="User" /></th>
					
						<g:sortableColumn property="message" title="${message(code: 'messages.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="messageDirection" title="${message(code: 'messages.messageDirection.label', default: 'Message Direction')}" />
					
						<g:sortableColumn property="dateLogged" title="${message(code: 'messages.dateLogged.label', default: 'Date Logged')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${messagesInstanceList}" status="i" var="messagesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${messagesInstance.id}">${fieldValue(bean: messagesInstance, field: "account")}</g:link></td>
					
						<td>${fieldValue(bean: messagesInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: messagesInstance, field: "message")}</td>
					
						<td>${fieldValue(bean: messagesInstance, field: "messageDirection")}</td>
					
						<td><g:formatDate date="${messagesInstance.dateLogged}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${messagesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
