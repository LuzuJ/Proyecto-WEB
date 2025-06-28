<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Registrar Postura</title>
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
        <h2>Registrar Nueva Postura</h2>
        <form class="formulario" action="gestionPosturas.jsp" method="GET" enctype="multipart/form-data">
          <div class="fila-doble">
            <input type="text" name="nombre_es" placeholder="Nombre en Español" required>
            <input type="text" name="nombre_sn" placeholder="Nombre en Sánscrito (Opcional)">
          </div>
          <fieldset style="margin: 1.5rem 0; padding: 1.5rem; border: 1px solid #ddd; border-radius: 8px;">
            <legend>Tipos de Terapia Asociados</legend>
            <div class="grupo-checkbox">
              <label><input type="checkbox" name="terapias[]" value="ansiedad"> Ansiedad</label>
              <label><input type="checkbox" name="terapias[]" value="artritis"> Artritis</label>
              <label><input type="checkbox" name="terapias[]" value="dolorEspalda"> Dolor de espalda</label>
              <label><input type="checkbox" name="terapias[]" value="dolorCabeza"> Dolor de cabeza</label>
              <label><input type="checkbox" name="terapias[]" value="insomnio"> Insomnio</label>
              <label><input type="checkbox" name="terapias[]" value="malaPostura"> Mala Postura</label>
            </div>
          </fieldset>
          <div class="fila-doble">
            <div><label>Fotografía de la postura</label><input type="file" name="foto" accept="image/*"></div>
            <div><label>Video de la postura (link YouTube)</label><input type="text" name="video" placeholder="https://www.youtube.com/watch?v=..."></div>
          </div>
          <textarea name="instrucciones" rows="4" placeholder="Instrucciones paso a paso..." style="margin-top: 1rem;"></textarea>
          <textarea name="beneficios" rows="3" placeholder="Beneficios de la postura..." style="margin-top: 1rem;"></textarea>
          <textarea name="modificaciones" rows="3" placeholder="Modificaciones (si existen)..." style="margin-top: 1rem;"></textarea>
          <div class="controles-sesion" style="justify-content: flex-start;">
            <button type="submit" class="btn btn-primario">Guardar Postura</button>
            <a href="gestionPosturas.jsp" class="btn btn-secundario">Cancelar</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>