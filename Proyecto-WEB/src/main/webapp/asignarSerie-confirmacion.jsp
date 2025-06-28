<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Confirmar Asignación</title>
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
      <div class="tarjeta" style="text-align: center; max-width: 600px;">
        <h2 style="color: #e67e22;">Advertencia</h2>
        <p style="font-size: 1.1rem; line-height: 1.6; margin: 1rem 0 2rem 0;">
          El paciente "Ana Pérez" ya tiene una serie asignada.<br>
          Asignar este nuevo plan ("Serie para Dolor de Espalda") reemplazará y archivará el anterior.
        </p>
        <p><strong>¿Desea continuar?</strong></p>

        <div class="controles-sesion">
            <a href="dashboard.jsp" class="btn btn-primario">Sí, Reemplazar y Asignar</a>
            <a href="asignarSerie.jsp" class="btn btn-secundario">Cancelar</a>
        </div>
      </div>
    </main>
  </div>
</body>
</html>