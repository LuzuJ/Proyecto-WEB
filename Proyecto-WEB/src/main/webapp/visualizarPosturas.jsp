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
    <div class="tarjeta">
      <h2>Instrucciones de la postura</h2>

      <p><strong>Nombre:</strong> <span id="postura-nombre">Postura del Gato-Vaca</span></p>
      <p><strong>Nombre en Sánscrito:</strong> <span id="postura-sanskrito">Marjaryasana-Bitilasana</span></p>
      <p><strong>Beneficios:</strong> <span id="postura-beneficios">Mejora la flexibilidad de la columna, alivia el estrés y fortalece las muñecas, hombros y caderas.</span></p>
      <p><strong>Instrucciones:</strong> <span id="postura-instrucciones">Comienza en cuatro puntos. Inhala en la Vaca arqueando la espalda, exhala en el Gato redondeando la columna. Alterna los movimientos con la respiración.</span></p>

      <div class="video-container"
        style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; background: #000;">
        <iframe id="youtube-video" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src=""
          title="Reproductor de video de YouTube" frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen>
        </iframe>
      </div>

      <div style="margin-top: 2rem;">
        <a id="regresar-btn" href="posturaEjecucion.jsp" class="btn btn-primario">Regresar</a>
      </div>
    </div>
  </main>
</body>

</html>