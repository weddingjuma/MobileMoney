
<%@ page import="mobilemoney.core.Transactions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transactions.label', default: 'Transactions')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transactions" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transactions" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="transactions.account.label" default="Account" /></th>
					
						<g:sortableColumn property="amount" title="${message(code: 'transactions.amount.label', default: 'Amount')}" />
					
						<th><g:message code="transactions.currencyType.label" default="Currency Type" /></th>
					
						<g:sortableColumn property="transactionType" title="${message(code: 'transactions.transactionType.label', default: 'Transaction Type')}" />
					
						<g:sortableColumn property="transactionMethod" title="${message(code: 'transactions.transactionMethod.label', default: 'Transaction Method')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'transactions.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transactionsInstanceList}" status="i" var="transactionsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transactionsInstance.id}">${fieldValue(bean: transactionsInstance, field: "account")}</g:link></td>
					
						<td>${fieldValue(bean: transactionsInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: transactionsInstance, field: "currencyType")}</td>
					
						<td>${fieldValue(bean: transactionsInstance, field: "transactionType")}</td>
					
						<td>${fieldValue(bean: transactionsInstance, field: "transactionMethod")}</td>
					
						<td>${fieldValue(bean: transactionsInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transactionsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
