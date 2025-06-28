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

  <main class="contenido-panel">
    <div class="tarjeta" style="text-align: center;">
      <h2 class="titulo-seccion">Iniciar sesión terapéutica</h2>
      <p style="margin-bottom: 2rem; font-style: italic; color: #555;">
        “Empieza a sanar”
      </p>

      <form class="formulario" style="align-items: center;">
        <label for="dolorInicio" style="margin-bottom: 1rem;">Antes de comenzar. Selecciona tu nivel de molestia al inicio</label>
        <select name="dolorInicio" id="dolorInicio" required style="margin-bottom: 2rem; max-width: 300px;">
          <option value="">Seleccione</option>
          <option value="0">Sin dolor/molestia</option>
          <option value="1">Leve</option>
          <option value="2">Moderado</option>
          <option value="3">Intenso</option>
          <option value="4">Máximo dolor/molestia</option>
        </select>
        <a href="posturaEjecucion.jsp" class="btn btn-grande-centro">Registrar dolor</a>
      </form>
    </div>
  </main>
  </div>
</body>

</html>