<%@ page import="com.grailsinaction.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'loginId', 'error')} required">
	<label for="loginId">
		<g:message code="user.loginId.label" default="Login Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginId" maxlength="15" required="" value="${userInstance?.loginId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="15" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homepage', 'error')} required">
	<label for="homepage">
		<g:message code="user.homepage.label" default="Homepage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homepage" maxlength="15" required="" value="${userInstance?.homepage}"/>

</div>

