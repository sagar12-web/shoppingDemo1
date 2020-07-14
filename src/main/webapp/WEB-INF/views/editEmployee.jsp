<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee registration form</title>
<%-- <%@ include file = "header.jsp" %>
 --%>
</head>
<body>
	<div>
		<form action="update_employee" method="post">
			<div>
				<label>Employee Name</label> <input type="text" name="id"
					value="${emp.id}" readonly="readonly">
			</div>
			<div>
				<label>Employee Name</label> <input type="text" name="employeeeName"
					value="${emp.employeeName}">
			</div>
			<div>
				<label>User Name</label> <input type="text" name="userName"
					value="${emp.userName}">
			</div>
			<div>
				<label>Mobile no</label> <input type="number" name="mobileNo"
					value="${emp.mobileNo}">
			</div>
			<div>
				<label>Password</label> <input type="password" name="password"
					value="${emp.password}">
			</div>
			<div>
				<label>Email</label> <input type="email" name="email"
					value="${emp.email}">
			</div>
			<div>
				<label>Employee DOB</label> <input type="date" name="dob"
					value="${emp.dob}">
			</div>
			<div>
				<label>Gender</label> <input type="radio" name="gender" value="male"
					${emp.gender == 'male'?'checked' :''}>male <input
					type="radio" name="gender" value="female"
					${emp.gender=='female'?'checked' :''}>female
			</div>
			<div>
				<label>Employee Hobbies</label> <input type="checkbox"
					name="hobbies" value="reading"
					<c:if test="${fn:contains(emp.hobbies, 'reading')}">checked</c:if>>Reading
				<input type="checkbox" name="hobbies" value="playing"
					<c:if test="${fn:contains(emp.hobbies, 'playing')}">checked</c:if>>Playing
				<input type="checkbox" name="hobbies" value="dancing"
					<c:if test="${fn:contains(emp.hobbies, 'dancing')}">checked</c:if>>Dancing

			</div>
			<div>
				<label>Department</label> <select name="department">
					<option value="md" ${emp.department=='md'?'selected':''}>MD</option>
					<option value="hr" ${emp.department=='hr'?'selected':''}>HR</option>
					<option value="admin" ${emp.department=='admin'?'selected':''}>Admin</option>
					<option value="it" ${emp.department=='it'?'selected':''}>IT</option>
					<option value="manager" ${emp.department=='manager'?'selected':''}>Manager</option>
				</select>

			</div>
			<div>
				<input type="submit" value="submit">
			</div>
		</form>
	</div>

</body>
</html>