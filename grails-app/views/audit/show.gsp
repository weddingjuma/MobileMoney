
<%@ page import="mobilemoney.core.Audit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'audit.label', default: 'Audit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-audit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-audit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list audit">
			
				<g:if test="${auditInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="audit.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="users" action="show" id="${auditInstance?.user?.id}">${auditInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditType}">
				<li class="fieldcontain">
					<span id="auditType-label" class="property-label"><g:message code="audit.auditType.label" default="Audit Type" /></span>
					
						<span class="property-value" aria-labelledby="auditType-label"><g:fieldValue bean="${auditInstance}" field="auditType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="audit.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${auditInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.dateLogged}">
				<li class="fieldcontain">
					<span id="dateLogged-label" class="property-label"><g:message code="audit.dateLogged.label" default="Date Logged" /></span>
					
						<span class="property-value" aria-labelledby="dateLogged-label"><g:formatDate date="${auditInstance?.dateLogged}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:auditInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${auditInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
