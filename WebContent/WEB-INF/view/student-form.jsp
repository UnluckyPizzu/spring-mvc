<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
	<title>Student Form</title>
</head>
	<body>
		<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		Last name: <form:input path="lastName"/>
		
		<br><br>
		Country:
			<form:select path="country">
			<form:options items="${student.countryOption}"/>
			</form:select>
			<br><br>
			
			Favorite Language:
			<br><br>
			Java <form:radiobutton path="favoriteLanguage" value="Java"/>
			C# <form:radiobutton path="favoriteLanguage" value="C#"/>
			PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
			Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
			
			<br><br>
			Operating System:
			
			Linux <form:checkbox path="operatingSystem" value="Linux"/>
			iOS <form:checkbox path="operatingSystem" value="iOS"/>
			Windows <form:checkbox path="operatingSystem" value="Windows"/>
			<br><br>
		<input type="submit" value="Submit"/>
		</form:form>
	</body>
</html>