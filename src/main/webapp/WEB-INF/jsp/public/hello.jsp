<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Hello!</title>
</head>
<body>
<h1 class="hello-title">Coming soon: some site</h1>

<button type="button" class="btn btn-primary"><c:out value="${Messages.NEXT_PAGE}"/></button>

<%@ include file="../common/footer.jsp" %>
</body>
</html>