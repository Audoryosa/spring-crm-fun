<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Page</title>
</head>
<body>
<h1>Hello there</h1>

<div id="wrapper">
    <div id="header">
        <h2>CRM App</h2>
    </div>
</div>

<div id="container">
    <div id="content">
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email Name</th>
            </tr>

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

</body>
</html>