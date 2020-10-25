<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Clinica Dental del Sur</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/cita.css" rel="stylesheet">
</head>
<body>
<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55
        <i class="icofont-google-map"></i> A108 Adam Street, NY
      </div>
      <div class="social-links">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a>
      </div>
    </div>
  </div>
   <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.html">Clinica Dental del Sur</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="index.jsp">Home</a></li>
         <li><a href="Especialidades.jsp">Especialidades</a></li>
         
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>

	<div class="reserva">
		
		<div class="freserva">
			
				<div class="form-group text-center">
					<h2>Reservar Cita</h2>
				
				</div>
			<form action="ResgistroServlet" method="POST">
			<input type="hidden" name="accion" value="AgregarCliente">
				<div class="row">
					
					<div class="col-md-6">
						<label><b>Nombre:</b></label>
						<input type="text" name="txtNombre"   class="form-control" >
					</div>
					<div class="col-md-6">
						<label><b>Apellidos:</b></label>
						<input type="text" name="txtApellido"  class="form-control" >
					</div>
					
				</div>
				<div class="row">
					<div class="col-md-12">
						<label><b>Correo:</b></label>
						<input type="text" name="txtCorreo"  class="form-control" >
					</div>
								
				</div>
				<div class="row">
					<div class="col-md-6">
						<label><b>Telefono:</b></label>
						<input type="text" name="txtTelefono" class="form-control" >
					</div>
					<div class="col-md-6">
						<label><b>Especialidad:</b></label>
						<select name="cboEspecialidad">
						<jsp:useBean class="Modelo.EspecialidadDAOimp" id="especialidadDAO"></jsp:useBean>
						<c:forEach items="${especialidadDAO.ListadoEspecialidad()}" var="especialidad">
							<option value="${especialidad.codigo}">${especialidad.especialidad}</option>
						</c:forEach>
					</select>
					</div>				
				</div>
				<div class="row">
					<div class="col-md-6">
						<label><b>Fecha:</b></label>
						<input type="date" name="dtFecha"  class="form-control">
					</div>
					<div class="col-md-4">
						<label><b>Hora:</b></label>
						<select name="cboAtencion">
						<jsp:useBean class="Modelo.AtencionDAOImp" id="atencionDAO"></jsp:useBean>
						<c:forEach items="${atencionDAO.ListadoAtencion()}" var="atencion">
							<option value="${atencion.codigoH}">${atencion.hora}</option>
						</c:forEach>
					</select>
					</div>	
								
				</div>
				<br>
				<br>
				<input type="submit" class="btn btn-info btn-lg btn-block" value="Agregar"> 
             	
			   <div class="alert alert-success">
			   	 <strong>${mensaje}</strong> 
			    </div>
		
			${error}	
						
			</form>
		</div>
	</div>
</body>
</html>