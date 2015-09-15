
<%@ page import="mobilemoney.core.Audit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'audit.label', default: 'Audit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-audit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-audit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="audit.user.label" default="User" /></th>
					
						<g:sortableColumn property="auditType" title="${message(code: 'audit.auditType.label', default: 'Audit Type')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'audit.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dateLogged" title="${message(code: 'audit.dateLogged.label', default: 'Date Logged')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${auditInstanceList}" status="i" var="auditInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${auditInstance.id}">${fieldValue(bean: auditInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: auditInstance, field: "auditType")}</td>
					
						<td>${fieldValue(bean: auditInstance, field: "description")}</td>
					
						<td><g:formatDate date="${auditInstance.dateLogged}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auditInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
