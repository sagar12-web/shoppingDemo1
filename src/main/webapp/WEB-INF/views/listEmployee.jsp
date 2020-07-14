<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<%-- <%@ include file = "header.jsp" %>
 --%>
</head>
<body>
	<header>
		<h1>Employee List</h1>
		<a href="employee_form">Add employee</a>
	</header>
	<c:if test="${!empty employees}">
		<table>
			<thead>
				<tr>
					<th>SN</th>
					<th>Id</th>
					<th>Name</th>
					<th>UserName</th>
					<th>Password</th>
					<th>Gender</th>
					<th>Hobbies</th>
					<th>Email</th>
					<th>Department</th>
					<th>DOB</th>
					<th>Mobile No</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${employees}" var="emp" varStatus="i">
					<tr>
						<td>${i.count}</td>
						<td>${emp.id}</td>
						<td>${emp.employeeName}</td>
						<td>${emp.userName}</td>
						<td>${emp.password}</td>
						<td>${emp.gender}</td>
						<td>${emp.hobbies}</td>
						<td>${emp.email}</td>
						<td>${emp.department}</td>
						<td>${emp.dob}</td>
						<td>${emp.mobileNo}</td>
						<td><a href="employee_edit?id=${emp.id}">Edit </a>|<a
							href="employee_delete?id=${emp.id}"> Delete</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</c:if>
</body>
</html>