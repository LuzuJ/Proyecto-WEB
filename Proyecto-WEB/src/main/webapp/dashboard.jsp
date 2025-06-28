<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Dashboard del Instructor</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" class="logo" />
    <div class="marca">Equilibrio Vital</div>
    <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>

  <div class="panel">
    
     <div class="menu-lateral">
        <button class="btn-menu" onclick="location.href='dashboard.jsp'">Dashboard</button>
        <button class="btn-menu" onclick="location.href='gestionPacientes.jsp'">Gestionar pacientes</button>
        <button class="btn-menu" onclick="location.href='crearSerie.jsp'">Crear serie terapéutica</button>
        <button class="btn-menu" onclick="location.href='asignarSerie.jsp'">Asignar serie</button>
      </div>

    <div class="contenido-panel">
      <div class="tarjeta">
        <h2>Bienvenido, Instructor</h2>
        <p>Desde este panel puedes gestionar pacientes, crear y asignar series terapéuticas, y hacer seguimiento a las sesiones completadas.</p>
        <ul>
          <li><strong>Pacientes registrados:</strong></li>
          <li><strong>Series creadas:</strong></li>
          <li><strong>Sesiones completadas esta semana:</strong></li>
        </ul>
      </div>
    </div>
  </div>
</body>
</html>