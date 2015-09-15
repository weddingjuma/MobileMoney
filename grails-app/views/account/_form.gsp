<%@ page import="mobilemoney.core.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountNumber', 'error')} required">
	<label for="accountNumber">
		<g:message code="account.accountNumber.label" default="Account Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="accountNumber" type="number" value="${accountInstance.accountNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="account.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mobilemoney.core.Users.list()}" optionKey="id" required="" value="${accountInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountType', 'error')} required">
	<label for="accountType">
		<g:message code="account.accountType.label" default="Account Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountType" name="accountType.id" from="${mobilemoney.lookup.AccountType.list()}" optionKey="id" required="" value="${accountInstance?.accountType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'statusType', 'error')} required">
	<label for="statusType">
		<g:message code="account.statusType.label" default="Status Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="statusType" from="${mobilemoney.enums.StatusType?.values()}" keys="${mobilemoney.enums.StatusType.values()*.name()}" required="" value="${accountInstance?.statusType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="account.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="balance" value="${fieldValue(bean: accountInstance, field: 'balance')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'currencyType', 'error')} required">
	<label for="currencyType">
		<g:message code="account.currencyType.label" default="Currency Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="currencyType" name="currencyType.id" from="${mobilemoney.lookup.CurrencyType.list()}" optionKey="id" required="" value="${accountInstance?.currencyType?.id}" class="many-to-one"/>

</div>

