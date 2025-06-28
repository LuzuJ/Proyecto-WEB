<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Gestión de Pacientes</title>
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
                <div class="header-gestion">
                    <h2>Gestión de Pacientes</h2>
                    <a href="registroPaciente.jsp" class="btn btn-primario">Registrar Nuevo Paciente</a>
                </div>
                
                <input type="text" placeholder="Buscar por nombre o correo..." style="width:100%; max-width:400px; margin-bottom: 1rem;">

                <table class="tabla-pacientes">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Correo Electrónico</th>
                            <th>Teléfono</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Ana Pérez</td>
                            <td>ana.perez@email.com</td>
                            <td>0987654321</td>
                            <td class="acciones-paciente">
                                <a href="editarPaciente.jsp" class="btn btn-secundario">Editar</a>
                                <a href="detalleSesion.jsp" class="btn btn-secundario">Historial</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Luis López</td>
                            <td>luis.lopez@email.com</td>
                            <td>0991234567</td>
                            <td class="acciones-paciente">
                                <a href="editarPaciente.jsp" class="btn btn-secundario">Editar</a>
                                <a href="detalleSesion.jsp" class="btn btn-secundario">Historial</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>