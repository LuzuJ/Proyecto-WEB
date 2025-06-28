<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Gestión de Posturas</title>
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
        <div class="header-gestion">
          <h2>Catálogo de Posturas</h2>
          <a href="registrarPostura.jsp" class="btn btn-primario">Registrar Nueva Postura</a>
        </div>
        <input type="text" placeholder="Buscar por nombre de postura..." style="width:100%; max-width:400px; margin-bottom: 1rem;">
        <table class="tabla-posturas">
          <thead>
            <tr>
              <th>Nombre de la Postura</th>
              <th>Terapias Asociadas</th>
              <th>Estado</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Postura del Gato-Vaca</td>
              <td><span class="terapia-tag">Dolor de espalda</span><span class="terapia-tag">Mala Postura</span></td>
              <td>Activa</td>
              <td class="acciones-postura">
                <a href="editarPostura.jsp" class="btn btn-secundario">Editar</a>
                <button type="button" class="btn btn-secundario" style="color: #c0392b;">Desactivar</button>
              </td>
            </tr>
            <tr>
              <td>Postura del Niño</td>
              <td><span class="terapia-tag">Ansiedad</span><span class="terapia-tag">Dolor de espalda</span></td>
              <td>Activa</td>
              <td class="acciones-postura">
                <a href="editarPostura.jsp" class="btn btn-secundario">Editar</a>
                <button type="button" class="btn btn-secundario" style="color: #c0392b;">Desactivar</button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
</html>