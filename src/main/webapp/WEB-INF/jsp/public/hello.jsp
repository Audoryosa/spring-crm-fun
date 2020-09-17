<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fomr" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Hello!</title>
</head>
<body>
<h1 class="hello-title">Welcome to customer registration site!</h1>
<h4>Signed in as: <security:authentication property="principal.username"/> | <security:authentication
        property="principal.authorities"/></h4>

<a href="${pageContext.request.contextPath}/customer/list" class="btn btn-primary">
    <c:out value="${Messages.NEXT_PAGE}"/></a>

<fomr:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input class="btn btn-secondary margin-10-top-bottom" type="submit" value="${Messages.LOGOUT}"/>
</fomr:form>

<%@ include file="../common/footer.jsp" %>
</body>
</html>