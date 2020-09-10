<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>
<html>
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Login</title>
</head>
<body>

<h2>Hello to login page</h2>

<a href="${pageContext.request.contextPath}/"><c:out value="${Messages.HOME}"/></a>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
