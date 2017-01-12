<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Spring MVC Starter Application</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

</head>

<body>
<div id="container">
    <div class="dualbrand">
        <img src="<c:url value="/static/resources/gfx/dualbrand_logo.png"/>"/>
    </div>


    <div class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <h1>Bem vindo a minha aplicação para estudo</h1>
        <form:form commandName="newMember" id="reg">
            <h2>Member Registration</h2>
            <p>Enforces annotation-based constraints defined on the model class.</p>
            <table>
                <tbody>
                <tr>
                    <td><form:label path="name">Name:</form:label></td>
                    <td><form:input path="name"/></td>
                    <td><form:errors class="invalid" path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email"/></td>
                    <td><form:errors class="invalid" path="email"/></td>
                </tr>
                <tr>
                    <td>
                        <form:label path="phoneNumber">Phone #:</form:label>
                    <td><form:input path="phoneNumber"/></td>
                    <td><form:errors class="invalid" path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td>
                        <form:label path="Grupo">Grupo #:</form:label>
                    <td><form:select path="Grupo.id" items="${grupos}" itemValue="id" itemLabel="nome"/></td>
                    <td><form:errors class="invalid" path="grupo"/></td>
                </tr>

                </tbody>
            </table>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="Register" class="register"/>
                    </td>
                </tr>
            </table>
        </form:form>
        <h2>Members</h2>
        <c:choose>
            <c:when test="${members.size()==0}">
                <em>No registered members.</em>
            </c:when>
            <c:otherwise>
                <table class="simpletablestyle">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone #</th>
                        <th>REST URL</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${members}" var="member">
                    <tr>
                        <td>${member.id}</td>
                        <td>${member.name}</td>
                        <td>${member.email}</td>
                        <td>${member.phoneNumber}</td>
                        <td><a href="<c:url value="/rest/members/${member.id}"/>">/rest/members/${member.id}</a>
                        </td>
                        </c:forEach>
                    </tbody>
                </table>
                <table class="simpletablestyle">
                    <tr>
                        <td>
                            REST URL for all members: <a href="<c:url value="/rest/members"/>">/rest/members</a>
                        </td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
   <%-- <div id="aside">
        <p>Learn more about JBoss Enterprise Application Platform 6.</p>
        <ul>
            <li><a
                    href="http://red.ht/jbeap-6-docs">Documentation</a></li>
            <li><a href="http://red.ht/jbeap-6">Product Information</a></li>
        </ul>
        <p>Learn more about JBoss AS 7.</p>
        <ul>
            <li><a
                    href="https://docs.jboss.org/author/display/AS7/Getting+Started+Developing+Applications+Guide">Getting
                Started Developing Applications Guide</a></li>
            <li><a href="http://jboss.org/jbossas">Community Project Information</a></li>
        </ul>
    </div>--%>
    <div id="footer">
        <p>
            This project was generated from a Maven archetype from
            JBoss.<br/>
        </p>
    </div>
</div>
</body>
</html>
