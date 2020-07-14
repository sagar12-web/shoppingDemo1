<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form action="save_employee" method = "post">
			<div>
			<label>Employee Name</label>
			<input type = "text" name ="employeeName">
			</div>
			<div>
			<label>User Name</label>
			<input type = "text" name ="userName">
			</div>
			<div>
			<label>Mobile no</label>  
			<input type = "number" name ="mobileNo">
			</div>
			<div>
			<label>Password</label>
			<input type = "password" name ="password">
			</div>
			<div>
			<label>Email</label>
			<input type = "email" name ="email">
			</div>
			<div>
			<label>Employee DOB</label>
			<input type = "date" name ="dob">
			</div>
			<div>
			<label>Gender</label>
			<input type = "radio" name ="gender" value ="male">male
			<input type = "radio" name ="gender" value ="female">female
			</div>
			<div>
			<label>Employee Hobbies</label>
			<input type = "checkbox" name ="hobbies" value ="reading">Reading
			<input type = "checkbox" name ="hobbies" value ="reading">Playing
			<input type = "checkbox" name ="hobbies" value ="dancing">Dancing
			
			</div>
			<div>
				<label>Department</label>
				<select name = "department">
				<option value ="md">MD</option>
				<option value = "hr">HR</option>
				<option value ="admin">Admin</option>
				<option value ="it">IT</option>
				<option value ="manager">Manager</option>
				</select>
			
			</div>
			<div>
				<input type = "submit" value= "submit">
			</div>
		</form>
	</div>

</body>
</html>