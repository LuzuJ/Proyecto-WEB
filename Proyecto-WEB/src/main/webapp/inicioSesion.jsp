<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Equilibrio Vital - Inicio de Sesi�n</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body class="fondo">
  <div class="contenedor-izquierdo">
    <h1 class="titulo-logo">Equilibrio Vital</h1>
    <div class="contenedor-formulario">
      <form class="formulario" method="POST">
        <h2 style="margin-bottom: 1.5rem;">Iniciar Sesi�n</h2>
        <input type="email" name="correo" placeholder="Correo electr�nico" required>
        <input type="password" name="password" placeholder="Contrase�a" required>

        <div class="grupo-botones-rol">
          <div class="fila-doble-rol">
            <button type="submit" formaction="dashboardPaciente.jsp" class="btn btn-primario btn-rol">Entrar como Paciente</button>
            <button type="submit" formaction="dashboard.jsp" class="btn btn-primario btn-rol">Entrar como Instructor</button>
          </div>
          <button type="submit" formaction="gestionPosturas.jsp" class="btn btn-secundario btn-rol">Entrar como Administrador</button>
        </div>
        <p class="enlace-registro">
          �Eres instructor y no tienes cuenta?
          <a href="registro.jsp">Reg�strate aqu�</a>
        </p>

        <p class="enlace-registro" style="margin-top: 0.5rem;">
          �Eres un paciente nuevo?
          <a href="activarCuenta.jsp">Activa tu cuenta aqu�</a>
        </p>

      </form>
    </div>
  </div>
</body>

</html>