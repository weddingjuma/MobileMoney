
<%@ page import="mobilemoney.lookup.SystemSettings" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemSettings.label', default: 'SystemSettings')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemSettings" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemSettings" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemSettings">
			
				<g:if test="${systemSettingsInstance?.key}">
				<li class="fieldcontain">
					<span id="key-label" class="property-label"><g:message code="systemSettings.key.label" default="Key" /></span>
					
						<span class="property-value" aria-labelledby="key-label"><g:fieldValue bean="${systemSettingsInstance}" field="key"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemSettingsInstance?.setting}">
				<li class="fieldcontain">
					<span id="setting-label" class="property-label"><g:message code="systemSettings.setting.label" default="Setting" /></span>
					
						<span class="property-value" aria-labelledby="setting-label"><g:fieldValue bean="${systemSettingsInstance}" field="setting"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemSettingsInstance?.dataType}">
				<li class="fieldcontain">
					<span id="dataType-label" class="property-label"><g:message code="systemSettings.dataType.label" default="Data Type" /></span>
					
						<span class="property-value" aria-labelledby="dataType-label"><g:fieldValue bean="${systemSettingsInstance}" field="dataType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemSettingsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemSettingsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
