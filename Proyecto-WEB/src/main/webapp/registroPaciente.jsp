<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Registrar Paciente</title>
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
            <button class="btn-menu activo">Gestionar pacientes</button>
            <button class="btn-menu" onclick="location.href='crearSerie.jsp'">Crear serie terapéutica</button>
            <button class="btn-menu" onclick="location.href='asignarSerie.jsp'">Asignar serie</button>
        </div>
        <div class="contenido-panel">
            <div class="tarjeta">
                <h2>Registrar Nuevo Paciente</h2>
                <form class="formulario" action="gestionPacientes.jsp" method="GET">
                    
                    <div class="fila-doble">
                        <input type="text" name="nombre" placeholder="Nombre completo" required />
                        <input type="text" name="cedula" placeholder="Cédula del paciente" required />
                    </div>

                    <div class="fila-doble">
                        <input type="email" name="correo" placeholder="Correo electrónico" required />
                        <input type="tel" name="telefono" placeholder="Teléfono" required/>
                    </div>
                    
                    <label for="fechaNacimiento" style="margin-top: 1rem; color: #555;">Fecha de nacimiento</label>
                    <input type="date" name="fechaNacimiento" required />

                    <div class="controles-sesion" style="justify-content: flex-start;">
                        <button type="submit" class="btn btn-primario">Guardar Paciente</button>
                        <a href="gestionPacientes.jsp" class="btn btn-secundario">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>