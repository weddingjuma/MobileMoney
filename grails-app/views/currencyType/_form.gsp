<%@ page import="mobilemoney.lookup.CurrencyType" %>



<div class="fieldcontain ${hasErrors(bean: currencyTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="currencyType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${currencyTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: currencyTypeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="currencyType.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${currencyTypeInstance?.code}"/>

</div>

