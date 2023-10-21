<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<div class="container-fluid">
<nav class="navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-clinic-medical" aria-hidden="true"></i> CityHub_Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
  <li class="nav-item"><a class="nav-link active " href="index.jsp">Home</a></li>    
  <li class="nav-item"><a class="nav-link active " href="docter.jsp">DOCTER</a></li> 
  <li class="nav-item"><a class="nav-link active " href="view_docter.jsp">View_DOCTER</a></li>    
  <li class="nav-item"><a class="nav-link active " href="patient.jsp">PATIENT</a></li>  
  <!-- <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>       -->
      </ul>
      <form class="d-flex">
      <div class="dropdown">

		<button class="btn btn-light dropdown-toggle" type="button" id="dropdownMEnuButton1" data-bs-toggle="dropdown" aria-expended="false">Admin</button> 
		<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		<li><a class="dropdown-item" href="./adminLogout">Logout</a></li>
		</ul>     
      </div>
      </form>
    </div>
  </div>

</nav>
</div>
<br>




