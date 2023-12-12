<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	String [] cities={"Mumbai","Pune","Nagpur","Aurangabad"};
    	pageContext.setAttribute("myCities", cities);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For each Demo title here</title>
</head>
<body>
	<c:forEach var="tempCity" items="${myCities}">
		${tempCity} <br></br>
	</c:forEach>
	<c:set var="temp" value="RockwellStar" />
		The length of <b>${temp}</b> is: ${fn:length(temp)}
	<br />
		The upper case form for <b>${temp}</b>, will be ${fn:toUpperCase(temp)}
	<br />
		The Starts with "Rock" checking against <b>${temp}</b>, results:  ${fn:startsWith(temp,"Rock") } 
	<br />
	<hr></hr>
	<c:set var="data" value="India,Srilanka,England,America" />
		
	<c:set var="Data_test" value="${fn:split(data,',') }" />
	Splitting data <b>India,Sri lanka,England,America</b> by applying ',' is: 
	<br></br>
	<c:forEach var="tempCity1" items="${Data_test}">
		${tempCity1} <br></br>
	 </c:forEach>
	 <hr></hr>
	 <h3>Join Demo</h3>
	 <c:set var="test_join" value="${fn:join(Data_test,'*')}" /> 
	 Join Result <br></br> ${test_join}
</body>
</html>