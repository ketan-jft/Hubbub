<html>
<head>
    <title>
        Timeline for ${ user.profile ? user.profile.fullName :
                user.loginId }
    </title>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<h1>&nbsp; Timeline for ${ user.profile ? user.profile.fullName :
        user.loginId }</h1><hr size="5" color="goldenrod">
<g:if test="${flash.message}">
    <div class="flash">
        ${flash.message}
    </div>
</g:if>
<table id="newPost">
    <tr>
        <td>
        <g:form action="addPost" id="${params.id}">
            <g:textArea style="width: 100%" name="content" required="required" value="${postInstance?.content}"/>
            <g:submitButton name="post" value="Post"/>
        </g:form>
        </td>
    </tr>
</table>
<table id="allPosts" class="table-view">
    <g:each in="${user.posts}" var="post">
        <tr class="postEntry TableRowColor">
            <td class="postText table-cell">
        <g:link url="../show/${post.id}">${post.content}</g:link>
            </td>
            <td class="postDate table-cell">
                ${post.dateCreated}
            </td>
            <td>
                <g:dateFromNow date="${post.dateCreated}"/>
            </td>
        </tr>
    </g:each>
    <tr><td>
    <g:paginate next="Forward" prev="Back"
                max="2" controller="post"
                action="timeline" id="${params.id}" total="${user.posts.size()}" />
    %{--<g:paginate controller="post" action="timeline" total="${user.posts.size()}" />--}%
    </td></tr>
</table>
</body>
</html>