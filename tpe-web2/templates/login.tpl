<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">

    <title>{$titulo}</title>
</head>
            
<body>

<h1>Iniciar Sesion</h1>
<div class="">
    <img src="images/bandas.jpg" alt="Login image" class="h-100">
</div>

<fieldset>
  <legend>Ingresa tus datos</legend>

<form method="POST" action="verify">
                    
  <div>
      <label for="email">E-mail</label>
      <input type="email" name='email' placeholder="Ejemplo@gmail.com" required>
  </div>

  <div>

      <label for="password">Contraseña</label>
      <input type="password" name='password' placeholder="*******" required>
      
  </div>

    <button type="submit" class="btn-sesion">Iniciar Sesion</button>

  <div>
  <p class="error">{$message}</p>
  </div>
  <p>¿No estas registrado? entra como <a href="home">Invitado</a></p>
  </fieldset>
</form>


   
