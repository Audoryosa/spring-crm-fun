<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>
<html>
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Login</title>
</head>
<body>

<h2>Log in to continue</h2>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
    <div class="form">
        <label>User name:</label> <input type="text" name="username">
        <label>Password:</label> <input type="password" name="password">
        <input class="btn btn-primary" type="submit" value="<c:out value="${Messages.LOGIN}" />">

        <c:if test="${param.error != null}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert" style="width: 25%">
                Bad credentials
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
    </div>
</form:form>

<a href="${pageContext.request.contextPath}/"><c:out value="${Messages.HOME}"/></a>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
