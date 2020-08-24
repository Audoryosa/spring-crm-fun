<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../common/header.jsp" %>
    <title>Customer Page</title>
</head>
<body>
<h1 class="hello-title">Hello there</h1>

<div id="wrapper">
    <div id="header">
        <h2>CRM App</h2>
    </div>
</div>

<div id="container">
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