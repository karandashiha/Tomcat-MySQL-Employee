<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees</title>
    <style>
        .firstButton {
           box-shadow:inset 0px 1px 0px 0px #bf00ff;
           	background:linear-gradient(to bottom, #ae83e6 5%, #abf5cb 100%);
           	background-color:#ae83e6;
           	border-radius:6px;
           	border:1px solid #48c792;
           	display:inline-block;
           	cursor:pointer;
           	color:#000000;
           	font-family:Arial;
           	font-size:15px;
           	font-weight:bold;
           	padding:6px 24px;
           	text-decoration:none;
           	text-shadow:0px 1px 0px #b5c4bc;
        }
        .firstButton:hover {
            background:linear-gradient(to bottom, #abf5cb 5%, #ae83e6 100%);
            	background-color:#abf5cb;
        }
        .firstButton:active {
            position:relative;
            	top:1px;
        }
        .blueButton {
            box-shadow:inset 0px 39px 0px -24px #7399e6;
            background-color:#5e94eb;
            border-radius:4px;
            border:1px solid #ffffff;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:Arial;
            font-size:12px;
            padding:6px 14px;
            text-decoration:none;
            text-shadow:0px 1px 0px #0052f5;
        }
        .blueButton:hover {
            background-color:#1448a3;
        }
        .blueButton:active {
            position:relative;
            top:1px;
        }

       .redButton {
         box-shadow:inset 0px 39px 0px -24px #e67a73;
         background-color:#e4685d;
         border-radius:4px;
         border:1px solid #ffffff;
         display:inline-block;
         cursor:pointer;
         color:#ffffff;
         font-family:Arial;
         font-size:12px;
         padding:6px 14px;
         text-decoration:none;
         text-shadow:0px 1px 0px #b23e35;
             }
        .redButton:hover {
            background-color:#eb675e;
        }
        .redButton:active {
            position:relative;
            top:1px;
        }

    </style>
</head>
<body>
    <center>
        <h1>Employees</h1>
        <h3>
        <!-- <a href="<%=request.getContextPath()%>/new">Add New Employee</a> -->
            <a href="<%=request.getContextPath()%>/new" class="firstButton">Add Employee</a>
            &nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/list" class="firstButton">List Employees</a>
        </h3>
    </center>
    <div align="center">
        <table border="1" cellpadding="10">
            <caption><h2>Employees</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Phone</th>
            </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td><c:out value="${employee.id}" /></td>
                    <td><c:out value="${employee.name}" /></td>
                    <td><c:out value="${employee.position}" /></td>
                    <td><c:out value="${employee.phone}" /></td>
                    <td>
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />" class="blueButton" >Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />" class="redButton">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>