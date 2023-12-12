<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.luv2code.mypack.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
List<Student> data = new ArrayList<>();
data.add(new Student("Virat", "Kohli", true));
data.add(new Student("Rohit", "Sharma", false));
data.add(new Student("Ravindra", "Jadeja", true));
data.add(new Student("Dinesh", "Kartik", false));

pageContext.setAttribute("myStudentData", data);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For each Student Demo</title>


</head>
<body>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Job Status</th>
		</tr>
		<c:forEach var="tempData" items="${myStudentData}">
			<tr>
				<td>${tempData.firstName}</td> <!-- Here JSP calls  myStudentData.getFirstName()-->
				<td>${tempData.lastName}</td>	<!-- Here JSP calls  myStudentData.getLastName()-->
				<td>
				 	<c:if test="${tempData.jobStatus}" >
				 		Employee!
				 	</c:if>
				</td>	<!-- Here JSP calls  myStudentData.getJobStatuss()-->
			</tr>
		</c:forEach>
	</table>
</body>
</html>