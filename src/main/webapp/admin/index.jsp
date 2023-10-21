<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminPage</title>
<%@ include file="../component/allcssjs.jsp" %>
<style type="text/css">

.point-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<c:if test="${empty adminObj }">
<c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>
<div class="container p-5">
<h1 class="text-center">Admin-Deshboard</h1>
<c:if test="${not empty sucMsg}">
  <p class="text-center text-success fs-3x">${sucMsg}</p>
  <c:remove var="sucMsg" scope="session"/>
  </c:if>
  <c:if test="${not empty errorMsg}">
  <p class="text-center text-danger fs-5">${errorMsg}</p>
  <c:remove var="errorMsg" scope="session" />
  </c:if>
<div class="row">
<div class="col-md-4">
<div class="card point-card">
<div class="card-body text-center text-success">
<i class="fa fa-user-md fa-3x" aria-hidden="true"></i><br>
<p class="fs-4 text-center">
Docter<br>5</p>
</div>
</div>
</div> 
<div class="col-md-4">
<div class="card point-card">
<div class="card-body text-center text-success">
<i class="fa fa-user-md fa-3x" aria-hidden="true"></i><br>
<p class="fs-4 text-center">
View Doctor_Deatils<br>5</p>
</div>
</div>
</div> 
 <div class="col-md-4">
<div class="card point-card">
<div class="card-body text-center text-success">
<i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i><br>
<p class="fs-4 text-center">
User<br>89</p>
</div>
</div>
</div> 
 <div class="col-md-4">
<div class="card point-card">
<div class="card-body text-center text-success">
<i class="fa fa-address-book fa-3x" aria-hidden="true"></i><br>
<p class="fs-4 text-center">
Total Appointment<br>545</p>
</div>
</div>
</div> 

 <div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa fa-address-book fa-3x" aria-hidden="true"></i><br>
<p class="fs-4 text-center">
Specilist<br>55</p>
</div>
</div>
</div> 
 </div>
</div>
<div class="container">
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="../addSpecialist" method="post">
      <div class="form-group">
      <label>Enter Specialist Name</label>
      <input type="text" name="specName" class="form-control">
      </div>
     <div class="text-center mt-2">
      <button type="submit" class="btn btn-success">Add</button></div>
      </form>
      </div>
      <div class="modal-footer text-center">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
    </div>
  </div>
</div>

</div>

</body>
</html>