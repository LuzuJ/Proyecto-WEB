<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Asignar Serie a Paciente</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
  <div class="barra">
    <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo Equilibrio Vital" class="logo" />
    <div class="marca">Equilibrio Vital</div>
    <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesión</button>
  </div>

  <div class="panel">
    <div class="menu-lateral">
        <button class="btn-menu" onclick="location.href='dashboard.jsp'">Dashboard</button>
        <button class="btn-menu" onclick="location.href='gestionPacientes.jsp'">Gestionar pacientes</button>
        <button class="btn-menu" onclick="location.href='crearSerie.jsp'">Crear serie terapéutica</button>
        <button class="btn-menu activo">Asignar serie</button>
      </div>

    <main class="contenido-panel">
      <div class="tarjeta">
        <h2>Asignar Serie a Paciente</h2>
        
        <form class="formulario" action="asignarSerie-confirmacion.jsp" method="GET">
          
          <div class="paso-asignacion">
            <label for="pacienteId" style="font-weight: bold; display: block; margin-bottom: 0.5rem;">Paso 1: Seleccionar Paciente</label>
            <select id="pacienteId" name="pacienteId" required style="width: 100%; max-width: 400px;">
              <option value="">Seleccione un paciente...</option>
              <option value="1">Ana Pérez</option>
              <option value="2">Luis López</option>
            </select>
          </div>

          <div class="paso-asignacion">
            <label for="serieId" style="font-weight: bold; display: block; margin-bottom: 0.5rem;">Paso 2: Seleccionar Serie Terapéutica</label>
            <select id="serieId" name="serieId" required style="width: 100%; max-width: 400px;">
              <option value="">Seleccione una serie...</option>
              <option value="101">Serie para Dolor de Espalda</option>
              <option value="102">Serie Relajante para Insomnio</option>
            </select>
          </div>

          <div class="resumen-serie">
            <h4>Resumen de la Serie Seleccionada</h4>
            <p><strong>Tipo de Terapia:</strong> Dolor de Espalda</p>
            <p><strong>Nº de Sesiones:</strong> 12</p>
            <p><strong>Posturas:</strong> Gato-Vaca (2 min), Postura del Niño (3 min), Esfinge (2 min)</p>
          </div>

          <button class="btn btn-primario" type="submit" style="margin-top: 2rem;">Asignar Serie</button>
        </form>
      </div>
    </main>
  </div>
</body>
</html>