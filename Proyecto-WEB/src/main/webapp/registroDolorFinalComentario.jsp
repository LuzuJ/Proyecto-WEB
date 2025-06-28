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
      <div class="tarjeta" style="padding: 2rem;">
        <h2>Evaluación después de la sesión</h2>

        <form class="formulario">
          <label for="dolorFinal" class="texto-label" style="margin-bottom: 1rem;">Nivel de molestia al final</label>
          <select name="dolorFinal" id="dolorFinal" required style="margin-bottom: 2rem; max-width: 300px;">
            <option value="">Seleccione</option>
            <option value="0">Sin dolor/molestia</option>
            <option value="1">Leve</option>
            <option value="2">Moderado</option>
            <option value="3">Intenso</option>
            <option value="4">Máximo dolor/molestia</option>
          </select>

          <label for="comentario" class="texto-label" style="margin-bottom: 1rem;">Comentario sobre la sesión</label>
          <textarea id="comentario" name="comentario" rows="5" required
            style="margin-bottom: 2rem; max-width: 100%;"></textarea>

          <a href="dashboardPaciente.jsp" class="btn btn-grande-centro">Finalizar Sesión</a>
        </form>

      </div>
    </div>
  </div>
</body>
</html>