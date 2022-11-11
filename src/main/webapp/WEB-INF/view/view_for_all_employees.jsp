<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: budaev
  Date: 11.11.2022
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">
    <input type="button" value="Salary" onclick="window.location.href = 'hr_info'">
    Only for HR staff
    <br><br>
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Perfomance" onclick="window.location.href = 'manager_info'">
Only for Managers
</security:authorize>

</body>
</html>
