<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-h-square" aria-hidden="true"></i> CityHub_Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
       <c:if test="${empty userObj}">
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i> Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="doctor_login.jsp">DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Appointment.jsp">APPOINMENT</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="user_login.jsp" >USER</a>
        </li>
       
       </c:if>
     
        <c:if test="${not empty userObj}">
        <li class="nav-item">
          <a class="nav-link" href="Appointment.jsp">APPOINMENT</a>
        </li><li class="nav-item">
          <a class="nav-link" href="">View APPOINMENT</a>
        </li>
        <div class="dropdown active">
  <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle-o" aria-hidden="true"></i><br>${userObj.fullName}
    
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Change Paasword</a></li>
    <li><a class="dropdown-item" href="userLogout">Logout</a></li>
    
  </ul>
</div>
        
        </c:if>
      </ul> 
    </div>
  </div>
</nav>
</div>
<br>




