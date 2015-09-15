<%@ page import="mobilemoney.core.Transactions" %>



<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="transactions.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${mobilemoney.core.Account.list()}" optionKey="id" required="" value="${transactionsInstance?.account?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="transactions.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: transactionsInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'currencyType', 'error')} required">
	<label for="currencyType">
		<g:message code="transactions.currencyType.label" default="Currency Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="currencyType" name="currencyType.id" from="${mobilemoney.lookup.CurrencyType.list()}" optionKey="id" required="" value="${transactionsInstance?.currencyType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'transactionType', 'error')} required">
	<label for="transactionType">
		<g:message code="transactions.transactionType.label" default="Transaction Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="transactionType" from="${mobilemoney.enums.TransactionType?.values()}" keys="${mobilemoney.enums.TransactionType.values()*.name()}" required="" value="${transactionsInstance?.transactionType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'transactionMethod', 'error')} required">
	<label for="transactionMethod">
		<g:message code="transactions.transactionMethod.label" default="Transaction Method" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="transactionMethod" from="${mobilemoney.enums.TransactionMethod?.values()}" keys="${mobilemoney.enums.TransactionMethod.values()*.name()}" required="" value="${transactionsInstance?.transactionMethod?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="transactions.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${transactionsInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionsInstance, field: 'dateLogged', 'error')} required">
	<label for="dateLogged">
		<g:message code="transactions.dateLogged.label" default="Date Logged" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateLogged" precision="day"  value="${transactionsInstance?.dateLogged}"  />

</div>

