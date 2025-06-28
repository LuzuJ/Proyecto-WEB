<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Equilibrio Vital - Activar Cuenta</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body class="fondo">
  <div class="contenedor-izquierdo">
    <h1 class="titulo-logo">Equilibrio Vital</h1>
    <div class="contenedor-formulario">
      <form class="formulario">
        <h2>Activa tu Cuenta</h2>
        <p style="color: white; font-size: 0.9rem; margin-bottom: 1rem;">
          Tu instructor te ha registrado. Por favor, ingresa tu correo y crea una contraseña para acceder al sistema.
        </p>

        <input type="email" name="correo" placeholder="Tu correo electrónico" required>
        <input type="password" name="nuevaContraseña" placeholder="Crea una contraseña" required>
        <input type="password" name="confirmarContraseña" placeholder="Confirma tu contraseña" required>

        <button type="submit" class="btn btn-primario">Activar y Guardar</button>

        <p class="enlace-login" style="margin-top: 1.5rem;">
          ¿Ya tienes una cuenta activa?
          <a href="inicioSesion.jsp">Inicia sesión</a>
        </p>
      </form>
    </div>
  </div>
</body>
</html>