<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Equilibrio Vital - Registro de Instructor</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
  <style>
    .formulario input[type="file"] {
      background-color: var(--color4);
      color: var(--color1);
      padding: 0.6rem;
      border: none;
      border-radius: 6px;
      font-family: inherit;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .formulario input[type="file"]::file-selector-button {
      background-color: var(--color3);
      color: white;
      border: none;
      padding: 0.5rem 1rem;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
      transition: background-color 0.3s;
      margin-right: 1rem;
    }

    .formulario input[type="file"]::file-selector-button:hover {
      background-color: var(--color2);
    }

    .formulario label {
      color: white;
      margin-top: 1rem;
      margin-bottom: 0.5rem;
      font-size: 0.9rem;
    }
  </style>
</head>
<body class="fondo">
  <div class="contenedor-izquierdo">
    <h1 class="titulo-logo">Equilibrio Vital</h1>
    <div class="contenedor-formulario">
      <form class="formulario" method="POST" action="/registro" enctype="multipart/form-data">
        <h2>Registro para instructores</h2>

        <input type="text" name="nombre" placeholder="Nombre completo" required>
        <input type="email" name="correo" placeholder="Correo electr�nico" required>
        <input type="password" name="password" placeholder="Contrase�a" required>
        <input type="password" name="confirmar" placeholder="Confirmar contrase�a" required>

        <label for="documento" style="color:white; margin-top:1rem; margin-bottom:0.5rem; font-size:0.9rem;">Documento de certificaci�n (PDF, JPG)</label>
        <input type="file" name="documento" id="documento" accept=".pdf,.jpg,.jpeg,.png" required>

        <button type="submit" class="btn btn-primario">Registrarme como Instructor</button>

        <p class="enlace-login">
          �Ya tienes cuenta?
          <a href="inicioSesion.jsp">Inicia sesi�n</a>
        </p>
      </form>
    </div>
  </div>
</body>
</html>