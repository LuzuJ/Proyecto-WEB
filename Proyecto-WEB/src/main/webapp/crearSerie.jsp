<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Crear Serie Terapéutica</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" class="logo" />
    <div class="marca">Equilibrio Vital</div>
    <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>

  <div class="panel">
    <div class="menu-lateral">
        <button class="btn-menu" onclick="location.href='dashboard.jsp'">Dashboard</button>
        <button class="btn-menu" onclick="location.href='gestionPacientes.jsp'">Gestionar pacientes</button>
        <button class="btn-menu activo">Crear serie terapéutica</button>
        <button class="btn-menu" onclick="location.href='asignarSerie.jsp'">Asignar serie</button>
      </div>

    <div class="contenido-panel">
      <div class="tarjeta">
        <h2>Crear Nueva Serie Terapéutica</h2>
        
        <form class="formulario" action="dashboard.jsp" method="GET">
          
          <div class="paso-creacion">
            <h3>Paso 1: Datos Generales</h3>
            <label for="nombreSerie">Nombre de la serie</label>
            <input type="text" id="nombreSerie" name="nombreSerie" placeholder="Ej. Serie matutina para dolor de espalda" required />
            
            <label for="tipoTerapia" style="margin-top: 1rem;">Tipo de terapia</label>
            <select id="tipoTerapia" name="tipoTerapia" required>
              <option value="">Selecciona una terapia para ver las posturas...</option>
              <option value="ansiedad">Ansiedad</option>
              <option value="artritis">Artritis</option>
              <option value="dolorEspalda">Dolor de espalda</option>
            </select>
          </div>

          <div class="paso-creacion">
            <h3>Paso 2: Construir la Secuencia</h3>
            <p style="color: #555;">Añade posturas desde el catálogo a tu secuencia en el orden que desees.</p>
            <div class="constructor-secuencia">
              <div class="catalogo-posturas">
                <h4>Posturas para "Dolor de Espalda"</h4>
                <div class="postura-disponible"><span>Postura del Gato-Vaca</span> <button type="button" class="btn-anadir">Añadir</button></div>
                <div class="postura-disponible"><span>Postura del Niño</span> <button type="button" class="btn-anadir">Añadir</button></div>
                <div class="postura-disponible"><span>Postura de la Esfinge</span> <button type="button" class="btn-anadir">Añadir</button></div>
                <div class="postura-disponible"><span>Torsión espinal supina</span> <button type="button" class="btn-anadir">Añadir</button></div>
              </div>
              <div class="secuencia-actual">
                <h4>Secuencia de la Serie (en orden)</h4>
                <div class="postura-en-serie">
                  <span>1. Postura del Gato-Vaca</span>
                  <input type="number" name="duracion[]" placeholder="min." required />
                </div>
                <div class="postura-en-serie">
                  <span>2. Postura del Niño</span>
                  <input type="number" name="duracion[]" placeholder="min." required />
                </div>
              </div>
            </div>
          </div>

          <div class="paso-creacion">
            <h3>Paso 3: Detalles Finales</h3>
            <label for="numSesiones">Número de sesiones recomendadas</label>
            <input type="number" id="numSesiones" name="numSesiones" min="1" max="100" required style="max-width: 200px;" />
          </div>

          <button type="submit" class="btn btn-primario" style="font-size: 1.1rem;">Guardar Serie Terapéutica</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>