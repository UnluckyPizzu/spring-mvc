<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
	<title>Customer Form</title>
	<style>
			.error {color:red}
	</style>
</head>
	<body>
		<form:form action="processForm" modelAttribute="customer">
		First name: <form:input path="firstName"/>
		<br><br>
		Last name: <form:input path="lastName"/>
		<br><br>
		<form:errors path="lastName" cssClass="error"></form:errors>
		
		<br><br>
		Course Code: <form:input path="courseCode"/>
		<br><br>
		<form:errors path="courseCode" cssClass="error"></form:errors>
		
		<br><br>
		<input type="submit" value="Submit"/>
		</form:form>
	</body>
</html>