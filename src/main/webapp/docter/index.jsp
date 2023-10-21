<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<%@ include file="../component/allcssjs.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>
<c:if test="${empty doctObj}">
  <c:redirect url="../docter_login.jsp"></c:redirect>
  
  
  
  </c:if>
<h3>Doctor Dashboard</h3>
</body>
</html>