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
    </ul>
</div>
<table class="table-view">
    <tr>
        <td>
            <h1>Search for Friends</h1>
        </td>
    </tr>
            <g:form action="results" method="post">
                <tr><td><label for="fullName">Name</label></td>
                    <td><g:textField name="fullName" /></td></tr>
                <tr><td><label for="email">Email ID</label></td>
                    <td><g:textField name="email" /></td></tr>
                <tr><td><label for="country">country</label></td>
                    <td><g:textField name="country" /></td></tr>
                <tr><td><label for="queryType">Operation</label></td>
                <td><g:radio name="queryType" value="and" />AND
                <g:radio name="queryType" value="or" />OR
                <g:radio name="queryType" value="not" />NOT</td></tr>
                <tr><td></td><td style="float: right"><g:submitButton name="search" value="Search"/></td></tr>
            </g:form>
</table>
</body>
</html>