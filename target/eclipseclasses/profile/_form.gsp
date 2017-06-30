<%@ page import="com.grailsinaction.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="profile.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${profileInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="profile.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="1000" value="${profileInstance?.bio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'homepage', 'error')} ">
	<label for="homepage">
		<g:message code="profile.homepage.label" default="Homepage" />
		
	</label>
	<g:field type="url" name="homepage" value="${profileInstance?.homepage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="profile.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${profileInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="profile.photo.label" default="Photo" />
		
	</label>
	<input type="file" id="photo" name="photo" />

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="profile.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${profileInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'timezone', 'error')} ">
	<label for="timezone">
		<g:message code="profile.timezone.label" default="Timezone" />
		
	</label>
	<g:textField name="timezone" value="${profileInstance?.timezone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'jabberAddress', 'error')} ">
	<label for="jabberAddress">
		<g:message code="profile.jabberAddress.label" default="Jabber Address" />
		
	</label>
	<g:field type="email" name="jabberAddress" value="${profileInstance?.jabberAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="profile.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.grailsinaction.User.list()}" optionKey="id" required="" value="${profileInstance?.user?.id}" class="many-to-one"/>

</div>

