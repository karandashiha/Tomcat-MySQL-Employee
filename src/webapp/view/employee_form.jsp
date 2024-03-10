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

        .saveButton {
        	box-shadow:inset 0px 1px 0px 0px #002bff;
        	background:linear-gradient(to bottom, #3c55fa 5%, #abaff5 100%);
        	background-color:#3c55fa;
        	border-radius:6px;
        	border:1px solid #4962c7;
        	display:inline-block;
        	cursor:pointer;
        	color:#ffffff;
        	font-family:Arial;
        	font-size:15px;
        	font-weight:bold;
        	padding:6px 24px;
        	text-decoration:none;
        	text-shadow:0px 1px 0px #000000;
        }
        .saveButton:hover {
        	background:linear-gradient(to bottom, #abaff5 5%, #3c55fa 100%);
        	background-color:#abaff5;
        }
        .saveButton:active {
        	position:relative;
        	top:1px;
        }
    </style>
</head>
<body>
    <center>
        <h1>Employees</h1>
        <h3>
            <a href="<%=request.getContextPath()%>/list"  class="firstButton">List Employees</a>
        </h3>
    </center>
    <div align="center">
        <c:if test="${employee != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${employee == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h3>
                    <c:if test="${employee != null}">
                        Edit employee
                    </c:if>
                    <c:if test="${employee == null}">
                        Add New Employee
                    </c:if>
                </h3>
            </caption>
                <c:if test="${employee != null}">
                    <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
                </c:if>
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="name" size="30"
                            value="<c:out value='${employee.name}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Position: </th>
                <td>
                    <input type="text" name="position" size="30"
                            value="<c:out value='${employee.position}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Phone: </th>
                <td>
                    <input type="text" name="phone" size="30"
                            value="<c:out value='${employee.phone}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <form action="<%=request.getContextPath()%>/insert">
                        <input type="submit" class= "saveButton" value="Save" />
                    </form>
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>