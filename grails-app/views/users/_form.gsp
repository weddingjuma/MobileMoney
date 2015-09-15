<%@ page import="mobilemoney.core.Users" %>



<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="users.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usersInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="users.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${usersInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="users.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${usersInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="users.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${usersInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="users.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usersInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="users.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usersInstance?.enabled}" />

</div>

