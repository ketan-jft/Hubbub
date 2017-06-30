<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title>Search Friends</title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        <li><g:link action='search'>Search</g:link></li>
    </ul>
</div>
<table>
    <tr>
        <td>
            <h1>Search for Friends</h1>
            <g:form action="results" method="post">
                <label for="loginId">Login ID</label>
                <g:textField name="loginId" />
                <g:submitButton name="search" value="Search"/>
            </g:form>
        </td>
    </tr>
</table>
</body>
</html>