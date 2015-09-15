<%@ page import="mobilemoney.lookup.SystemSettings" %>



<div class="fieldcontain ${hasErrors(bean: systemSettingsInstance, field: 'key', 'error')} required">
	<label for="key">
		<g:message code="systemSettings.key.label" default="Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="key" required="" value="${systemSettingsInstance?.key}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemSettingsInstance, field: 'setting', 'error')} ">
	<label for="setting">
		<g:message code="systemSettings.setting.label" default="Setting" />
		
	</label>
	<g:textArea name="setting" cols="40" rows="5" value="${systemSettingsInstance?.setting}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemSettingsInstance, field: 'dataType', 'error')} required">
	<label for="dataType">
		<g:message code="systemSettings.dataType.label" default="Data Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dataType" required="" value="${systemSettingsInstance?.dataType}"/>

</div>

