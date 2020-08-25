<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Add a Customer</title>
</head>
<body>
<h2>Please fill in the form</h2>
<hr/>

<form:form action="saveCustomer" modelAttribute="customer" method="POST">
    <table class="table col-lg-4">
        <tbody>
        <tr>
            <td><label><c:out value="${Messages.FIRST_NAME}"/>:</label></td>
            <td><form:input path="firstName"/></td>
        </tr>

        <tr>
            <td><label><c:out value="${Messages.LAST_NAME}"/>:</label></td>
            <td><form:input path="lastName"/></td>
        </tr>

        <tr>
            <td><label><c:out value="${Messages.EMAIL}"/>:</label></td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn btn-success" type="submit" value="<c:out value='${Messages.SAVE}' />"/></td>
        </tr>
        </tbody>
    </table>

    <hr/>

    <div>
        <a class="btn btn-info" href="${pageContext.request.contextPath}/customer/list"><c:out
                value="${Messages.RETURN_BACK}"/></a>
    </div>

</form:form>

<%@ include file="../common/footer.jsp" %>
</body>
</html>