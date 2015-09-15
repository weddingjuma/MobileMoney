
<%@ page import="mobilemoney.core.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="account.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${accountInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="account.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="users" action="show" id="${accountInstance?.user?.id}">${accountInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.accountType}">
				<li class="fieldcontain">
					<span id="accountType-label" class="property-label"><g:message code="account.accountType.label" default="Account Type" /></span>
					
						<span class="property-value" aria-labelledby="accountType-label"><g:link controller="accountType" action="show" id="${accountInstance?.accountType?.id}">${accountInstance?.accountType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.statusType}">
				<li class="fieldcontain">
					<span id="statusType-label" class="property-label"><g:message code="account.statusType.label" default="Status Type" /></span>
					
						<span class="property-value" aria-labelledby="statusType-label"><g:fieldValue bean="${accountInstance}" field="statusType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.balance}">
				<li class="fieldcontain">
					<span id="balance-label" class="property-label"><g:message code="account.balance.label" default="Balance" /></span>
					
						<span class="property-value" aria-labelledby="balance-label"><g:fieldValue bean="${accountInstance}" field="balance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.currencyType}">
				<li class="fieldcontain">
					<span id="currencyType-label" class="property-label"><g:message code="account.currencyType.label" default="Currency Type" /></span>
					
						<span class="property-value" aria-labelledby="currencyType-label"><g:link controller="currencyType" action="show" id="${accountInstance?.currencyType?.id}">${accountInstance?.currencyType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
