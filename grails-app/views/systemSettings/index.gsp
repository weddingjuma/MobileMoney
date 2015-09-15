
<%@ page import="mobilemoney.lookup.SystemSettings" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemSettings.label', default: 'SystemSettings')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemSettings" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemSettings" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="key" title="${message(code: 'systemSettings.key.label', default: 'Key')}" />
					
						<g:sortableColumn property="setting" title="${message(code: 'systemSettings.setting.label', default: 'Setting')}" />
					
						<g:sortableColumn property="dataType" title="${message(code: 'systemSettings.dataType.label', default: 'Data Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemSettingsInstanceList}" status="i" var="systemSettingsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemSettingsInstance.id}">${fieldValue(bean: systemSettingsInstance, field: "key")}</g:link></td>
					
						<td>${fieldValue(bean: systemSettingsInstance, field: "setting")}</td>
					
						<td>${fieldValue(bean: systemSettingsInstance, field: "dataType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${systemSettingsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
