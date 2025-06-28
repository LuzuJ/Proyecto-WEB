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
    </div>

    <div class="contenido-panel">
      <div class="tarjeta">
        <div class="postura-container">
            <div class="progreso-serie">Postura 1 de 4</div>
            <h2 id="postura-titulo">Postura del Gato-Vaca</h2>
            
            <img id="postura-imagen" src="${pageContext.request.contextPath}/assets/img/gato-vaca.jpg" alt="Postura del Gato-Vaca" class="imagen-postura-grande">
            
            <div id="timer-display" style="font-size: 4rem; font-weight: bold; margin: 1rem 0; color: #1ABC83;">02:00</div>
            
            <div class="controles-sesion">
                <button id="start-pause-btn" class="btn btn-primario">Pausar</button>
                <a id="detalles-btn" href="visualizarPosturas.jsp" class="btn btn-secundario">Ver Instrucciones</a>
                <a href="registroDolorFinalComentario.jsp" class="btn btn-secundario">Avanzar</a>

            </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>