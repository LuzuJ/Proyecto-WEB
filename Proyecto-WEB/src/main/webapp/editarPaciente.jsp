<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Editar Paciente</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="dashboard">
    <div class="barra">
        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" class="logo" />
        <div class="marca">Equilibrio Vital</div>
        <button class="btn-cerrar-sesion" onclick="location.href='inicioSesion.jsp'">Cerrar sesi�n</button>
    </div>
    <div class="panel">
        <div class="menu-lateral">
            <button class="btn-menu" onclick="location.href='dashboard.jsp'">Dashboard</button>
            <button class="btn-menu activo">Gestionar pacientes</button>
            <button class="btn-menu" onclick="location.href='crearSerie.jsp'">Crear serie terap�utica</button>
            <button class="btn-menu" onclick="location.href='asignarSerie.jsp'">Asignar serie</button>
        </div>
        <div class="contenido-panel">
            <div class="tarjeta">
                <h2>Editando a: Ana P�rez</h2>
                <form class="formulario" action="gestionPacientes.jsp" method="GET">
                    
                    <div class="fila-doble">
                        <input type="text" name="nombre" placeholder="Nombre completo" value="Ana P�rez" required />
                        <input type="text" name="cedula" placeholder="C�dula del paciente" value="1712345678" required />
                    </div>

                    <div class="fila-doble">
                        <input type="email" name="correo" placeholder="Correo electr�nico" value="ana.perez@email.com" required />
                        <input type="tel" name="telefono" placeholder="Tel�fono" value="0987654321" required/>
                    </div>
                    
                    <label for="fechaNacimiento" style="margin-top: 1rem; color: #555;">Fecha de nacimiento</label>
                    <input type="date" name="fechaNacimiento" value="1990-05-15" required />

                    <div class="controles-sesion" style="justify-content: flex-start;">
                        <button type="submit" class="btn btn-primario">Guardar Cambios</button>
                        <a href="gestionPacientes.jsp" class="btn btn-secundario">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>