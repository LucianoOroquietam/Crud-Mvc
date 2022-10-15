{include file="header.tpl"}

<img href="../images/bandas.jpg">

<fieldset>
  <legend>Ingresa tus datos</legend>

<form method="POST" action="verify">
                    
  <div>
      <label for="email">E-mail</label>
      <input type="email" name='email' placeholder="Ejemplo@gmail.com">
  </div>

  <div>

      <label for="password">Contraseña</label>
      <input type="password" name='password' placeholder="*******">
      
  </div>

    <button type="submit" class="btn btn-primary">Login</button>

  <div>
  {$message}
  </div>
  <p>No estas registrado? entra como invitado <a href="home">Invitado</a></p>
  </fieldset>
</form>


   
{include file="footer.tpl"}