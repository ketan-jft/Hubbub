<%@ page import="com.grailsinaction.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tagInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="tag.posts.label" default="Posts" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="tag.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.grailsinaction.User.list()}" optionKey="id" required="" value="${tagInstance?.user?.id}" class="many-to-one"/>

</div>

