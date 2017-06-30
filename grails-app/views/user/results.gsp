<html>
<head>
    <title>Search Results</title>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <meta name="layout" content="main"/>
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
    <caption><h1>Results</h1></caption>
    <tr>
        <td>
            Searched ${totalUsers} records
            for items matching <b><em>${term}</em></b>.
        Found <strong>${users.size()}</strong> hits.
        </td>
    </tr>
    <tr>
        <td>
        <ul>
        <g:each var="user" in="${users}">
            <li style="list-style: upper-alpha"><g:link url="show/${user.id}">${user.loginId}</g:link></li>
        </g:each>
        </ul>
        </td>
    </tr>
</table>
</body>
</html>