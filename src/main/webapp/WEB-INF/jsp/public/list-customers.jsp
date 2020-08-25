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
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email Name</th>
            </tr>
            </thead>

            <c:forEach var="tempCustomer" items="${customers}">
                <tr>
                    <td> ${tempCustomer.firstName}</td>
                    <td> ${tempCustomer.lastName}</td>
                    <td> ${tempCustomer.email}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>