
<%@ page import="mobilemoney.core.Transactions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transactions.label', default: 'Transactions')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transactions" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transactions" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transactions">
			
				<g:if test="${transactionsInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="transactions.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${transactionsInstance?.account?.id}">${transactionsInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="transactions.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${transactionsInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.currencyType}">
				<li class="fieldcontain">
					<span id="currencyType-label" class="property-label"><g:message code="transactions.currencyType.label" default="Currency Type" /></span>
					
						<span class="property-value" aria-labelledby="currencyType-label"><g:link controller="currencyType" action="show" id="${transactionsInstance?.currencyType?.id}">${transactionsInstance?.currencyType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.transactionType}">
				<li class="fieldcontain">
					<span id="transactionType-label" class="property-label"><g:message code="transactions.transactionType.label" default="Transaction Type" /></span>
					
						<span class="property-value" aria-labelledby="transactionType-label"><g:fieldValue bean="${transactionsInstance}" field="transactionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.transactionMethod}">
				<li class="fieldcontain">
					<span id="transactionMethod-label" class="property-label"><g:message code="transactions.transactionMethod.label" default="Transaction Method" /></span>
					
						<span class="property-value" aria-labelledby="transactionMethod-label"><g:fieldValue bean="${transactionsInstance}" field="transactionMethod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="transactions.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${transactionsInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionsInstance?.dateLogged}">
				<li class="fieldcontain">
					<span id="dateLogged-label" class="property-label"><g:message code="transactions.dateLogged.label" default="Date Logged" /></span>
					
						<span class="property-value" aria-labelledby="dateLogged-label"><g:formatDate date="${transactionsInstance?.dateLogged}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:transactionsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${transactionsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
