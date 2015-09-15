<%@ page import="mobilemoney.lookup.AccountType" %>



<div class="fieldcontain ${hasErrors(bean: accountTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="accountType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountTypeInstance?.name}"/>

</div>

