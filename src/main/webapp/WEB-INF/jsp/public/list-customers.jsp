<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.audriuskumpis.crmapp.Messages" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Customer Page</title>
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>List of Customers</h2>
        <hr/>
    </div>
</div>

<div id="container">

    <div class="buttons">
        <input type="button" class="btn btn-primary" value="<c:out value="${Messages.ADD_CUSTOMER}" />"
               onclick="window.location.href='showAddCustomerForm'; return false;"/>
    </div>

    <div id="content">
        <table class="table table-stripped table-hover">
            <thead class="table-dark">
            <tr>
                <th><c:out value="${Messages.FIRST_NAME}"/></th>
                <th><c:out value="${Messages.LAST_NAME}"/></th>
                <th><c:out value="${Messages.EMAIL}"/></th>
                <th><c:out value="${Messages.ACTION}"/></th>
            </tr>
            </thead>

            <c:forEach var="tempCustomer" items="${customers}">

                <c:url var="updateLink" value="/customer/showFormUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>

                <tr>
                    <td> ${tempCustomer.firstName}</td>
                    <td> ${tempCustomer.lastName}</td>
                    <td> ${tempCustomer.email}</td>
                    <td><a href="${updateLink}"><c:out value="${Messages.UPDATE}"/></a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>