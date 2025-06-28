<%@ page import="com.equilibriovital.modelo.Postura" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Ejecutando Terapia</title>
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
            
            <%-- Obtenemos los objetos que nos envió el servlet --%>
            <% Postura postura = (Postura) request.getAttribute("posturaActual"); %>
            <% Integer pasoActual = (Integer) session.getAttribute("pasoActual"); %>
            
            <%-- CORRECCIÓN: Mostramos el número de paso actual dinámicamente --%>
            <div class="progreso-serie">Postura <%= pasoActual %> de 3</div>
            
            <h2 id="postura-titulo"><%= (postura != null) ? postura.getNombre() : "Fin de la serie" %></h2>
            
            <img id="postura-imagen" src="${pageContext.request.contextPath}/<%= (postura != null) ? postura.getFotoUrl() : "" %>" alt="Postura" class="imagen-postura-grande">
            
            <div id="timer-display" style="font-size: 4rem; font-weight: bold; margin: 1rem 0; color: #1ABC83;">02:00</div>
            
            <div class="controles-sesion">
                <button id="start-pause-btn" class="btn btn-primario">Pausar</button>
                <a id="detalles-btn" href="sesion?accion=verInstrucciones" class="btn btn-secundario">Ver Instrucciones</a>
                
                <%-- Este enlace ahora simula el fin del temporizador y llama al controlador para avanzar --%>
                <a href="sesion?accion=notificarFinTemporizador" class="btn btn-secundario">Avanzar</a>
            </div>
        </div>
      </div>
    </div>
  </div>
  
  
</body>
</html>