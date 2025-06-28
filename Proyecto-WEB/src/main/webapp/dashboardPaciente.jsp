<%@ page import="com.equilibriovital.modelo.Serie" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Mi Panel de Terapia</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
  <div class="barra">
      <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo Equilibrio Vital" class="logo">
      <h1 class="marca">Equilibrio Vital</h1>
      <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>
  <div class="panel">
    <div class="menu-lateral">
        <button class="btn-menu activo">Mi Sesión Actual</button>
        <button class="btn-menu">Mi Historial</button>
    </div>
    <main class="contenido-panel">
      <div class="tarjeta" style="text-align: center;">
        <h2>Bienvenida, Paciente</h2>
        <p style="margin-bottom: 1rem; color: #555;">Tu serie terapéutica asignada está lista para ti.</p>
        
        <%-- Obtenemos el objeto 'serieDelPaciente' que nos envió el servlet --%>
        <% Serie serie = (Serie) request.getAttribute("serieDelPaciente"); %>

        <% if (serie != null) { %>
            <div class="tarjeta" style="background-color: #f8f9fa; margin-top: 2rem;">
              <%-- Mostramos los datos del objeto --%>
              <h3 style="margin-top:0;"><%= serie.getNombre() %></h3>
              <p><strong>Sesiones completadas:</strong> <%= serie.getSesionesCompletadas() %> de <%= serie.getSesionesTotales() %></p>
              <p style="font-style: italic;">"La constancia es la clave para tu bienestar."</p>
            </div>
        <% } %>

        <a href="sesion?accion=iniciar" class="btn btn-grande-centro">Comenzar Sesión</a>
      </div>
    </main>
  </div>
</body>
</html>