<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Editar Postura</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" class="logo" />
    <div class="marca">Equilibrio Vital - Panel de Administrador</div>
    <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>
  <div class="panel">
    <div class="menu-lateral">
        <button class="btn-menu activo">Gestionar Posturas</button>
    </div>
    <div class="contenido-panel">
      <div class="tarjeta">
        <h2>Editando: Postura del Gato-Vaca</h2>
        <form class="formulario" action="gestionPosturas.jsp" method="GET" enctype="multipart/form-data">
          <div class="fila-doble">
            <input type="text" name="nombre_es" value="Postura del Gato-Vaca" required>
            <input type="text" name="nombre_sn" value="Marjaryasana-Bitilasana">
          </div>
          <fieldset style="margin: 1.5rem 0; padding: 1.5rem; border: 1px solid #ddd; border-radius: 8px;">
            <legend>Tipos de Terapia Asociados</legend>
            <div class="grupo-checkbox">
              <label><input type="checkbox" name="terapias[]" value="ansiedad"> Ansiedad</label>
              <label><input type="checkbox" name="terapias[]" value="artritis"> Artritis</label>
              <label><input type="checkbox" name="terapias[]" value="dolorEspalda" checked> Dolor de espalda</label>
              <label><input type="checkbox" name="terapias[]" value="dolorCabeza"> Dolor de cabeza</label>
              <label><input type="checkbox" name="terapias[]" value="insomnio"> Insomnio</label>
              <label><input type="checkbox" name="terapias[]" value="malaPostura" checked> Mala Postura</label>
            </div>
          </fieldset>
          <div class="fila-doble">
            <div><label>Fotografía de la postura</label><input type="file" name="foto" accept="image/*"></div>
            <div><label>Video de la postura (link YouTube)</label><input type="text" name="video" value="https://www.youtube.com/watch?v=VIDEO_ID"></div>
          </div>
          <textarea name="instrucciones" rows="4" placeholder="Instrucciones paso a paso..." style="margin-top: 1rem;">Comienza a cuatro patas...</textarea>
          <textarea name="beneficios" rows="3" placeholder="Beneficios de la postura..." style="margin-top: 1rem;">Flexibiliza la columna...</textarea>
          <textarea name="modificaciones" rows="3" placeholder="Modificaciones (si existen)..." style="margin-top: 1rem;">Colocar una manta bajo las rodillas...</textarea>
          <div class="controles-sesion" style="justify-content: flex-start;">
            <button type="submit" class="btn btn-primario">Guardar Cambios</button>
            <a href="gestionPosturas.jsp" class="btn btn-secundario">Cancelar</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>