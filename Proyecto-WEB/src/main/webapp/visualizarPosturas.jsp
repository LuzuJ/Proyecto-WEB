<%@ page import="com.equilibriovital.modelo.Postura" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Detalles de Postura</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body>
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo Equilibrio Vital" class="logo">
    <h1 class="marca">Equilibrio Vital</h1>
  </div>

  <main class="contenido-panel">
    <%-- Obtenemos el objeto 'posturaDetallada' que nos envió el servlet --%>
    <% Postura postura = (Postura) request.getAttribute("posturaDetallada"); %>

    <div class="tarjeta">
      <h2>Instrucciones de la postura</h2>

        <% if (postura != null) { %>
            <p><strong>Nombre:</strong> <span><%= postura.getNombre() %></span></p>
            <p><strong>Nombre en Sánscrito:</strong> <span>(Marjaryasana-Bitilasana)</span></p>
            <p><strong>Beneficios:</strong> <span><%= postura.getBeneficios() %></span></p>
            <p><strong>Instrucciones:</strong> <span><%= postura.getInstrucciones() %></span></p>

            <div class="video-container" style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; background: #000;">
                <iframe id="youtube-video" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" 
                        src="<%= postura.getVideoUrl() %>"
                        title="Reproductor de video de YouTube" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen>
                </iframe>
            </div>
        <% } else { %>
            <p>No se encontraron los detalles de la postura.</p>
        <% } %>

      <div style="margin-top: 2rem;">
        <%-- Este enlace debería volver a la ejecución, llamando al controlador --%>
        <a id="regresar-btn" href="sesion?accion=notificarFinTemporizador" class="btn btn-primario">Regresar a la Sesión</a>
      </div>
    </div>
  </main>
</body>

</html>