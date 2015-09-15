<%@ page import="mobilemoney.core.Audit" %>



<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="audit.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mobilemoney.core.Users.list()}" optionKey="id" required="" value="${auditInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditType', 'error')} required">
	<label for="auditType">
		<g:message code="audit.auditType.label" default="Audit Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="auditType" from="${mobilemoney.enums.AuditType?.values()}" keys="${mobilemoney.enums.AuditType.values()*.name()}" required="" value="${auditInstance?.auditType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="audit.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${auditInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'dateLogged', 'error')} required">
	<label for="dateLogged">
		<g:message code="audit.dateLogged.label" default="Date Logged" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateLogged" precision="day"  value="${auditInstance?.dateLogged}"  />

</div>

