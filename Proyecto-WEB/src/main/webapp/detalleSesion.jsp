<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Historial de Sesiones</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body>
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo Equilibrio Vital" class="logo" />
    <h1 class="marca">Equilibrio Vital</h1>
    <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>

  <div class="panel">
    <div class="menu-lateral">
      <button class="btn-menu activo">Ver historial</button>
    </div>

    <div class="contenido-panel">
      <div class="tarjeta" style="padding: 2rem;">
        <h2>Historial de sesiones</h2>

        <div class="tarjeta" style="margin-top: 2rem; padding: 1.5rem;">
          <p><strong>Fecha:</strong> 2025-06-03</p>
          <p><strong>Hora de inicio:</strong> 15:00 pm</p>
          <p><strong>Duración efectiva:</strong> 22 minutos</p>
          <p><strong>Pausas realizadas:</strong> 1</p>
          <p><strong>Intensidad inicial:</strong> Moderado</p>
          <p><strong>Intensidad final:</strong> Leve</p>
          <p><strong>Comentario:</strong> Me sentí relajado y más flexible.</p>
        </div>

        <div style="margin-top: 2rem;">
          <a id="regresar-btn" href="gestionPacientes.jsp" class="btn btn-primario">Regresar</a>
        </div>
      </div>
    </div>
  </div>
</body>

</html>