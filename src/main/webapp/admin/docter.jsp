<%@ page import="com.dao.DocterDao" %>
<%@ page import="com.entity.Docter" %>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Docters</title>
<%@ include file="../component/allcssjs.jsp" %>
<style type="text/css">

.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container-fluid mt-2">
<div class="row">

<div class="col-md-4">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Add Docter</p>
<c:if test="${not empty errorMsg}">   
<p class="fs-3 text-center text-danger">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>
<c:if test="${not empty succMsg}">
<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
<c:remove var="succMsg" scope="session"/>
</c:if>
  <form action="../addDocter" method="post">
  <div class="mb-3">
  <label class="form-label">Full Name</label><input type="text"
  required name="fullname" class="form-control">
  </div>
  <div class="mb-3">
  <label class="form-label">DOB</label><input type="date"
  required name="dob" class="form-control">
  </div>
  <div class="mb-3">
  <label class="form-label">Qualification</label><input type="text"
  required name="qualification" class="form-control">
  </div>
  <div class="mb-3">
  <label class="form-label">Specialist</label>
  <select name="spec" required class="form-control">
  <option>--select--</option>
  
  <% SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
         List<Specalist>list=dao.getAllSpecalist();
       for(Specalist s:list){%>
    	 <option><%=s.getSpecialistName() %></option>  
       <%}
  %>
  <option>Demo</option>  
  </select>
  </div>
 <div class="mb-3">
  <label class="form-label">Email</label><input type="email"
  required name="email" class="form-control">
  </div>
  <div class="mb-3">
  <label class="form-label">mob no</label><input type="text"
  required name="mobno" class="form-control">
  </div>
  <div class="mb-3">
  <label class="form-label">password</label><input type="password"
  required name="password" class="form-control">
  </div>
  <div class="container text-center mt-2">
  <button class="btn btn-success" type="submit">submit</button>
  </div>
  </form>
</div>
</div>
</div>
</div>
</div>




</body>
</html>