
{{include file="header.tpl"}}


  <h1>Generos</h1>
  {if $error}
    
    <p class="msg-error">{$error}</p>
    <a class="location" href="generos">Volver</a>
    
  {/if}
  
    {{foreach from=$genre item=$i}}

    <div class="contenedor">
      <ul>  
        <li>
        <div class="conteiner-flex">
        <h3 class="genero">Genero:</h3> 
        <a class="genero-a" href='showGenero/{$i->id_genero}'>{$i->genero_banda} </a>
        </div>
        <li> <h3> Historia del genero: </h3> <p class="genero-detalles">{$i->historia_genero}</p></li>

        <li> <h3> Instrumentos Comunes: </h3> <p class="genero-detalles">{$i->instrumentos_comunes}</p></li>
        {if isset($smarty.session.USER_EMAIL)}
          <div class="conteiner-flex">
          <li><button> <a href='deleteGenre/{$i->id_genero}'>Eliminar Genero</a></button></li>
          <li><button> <a href='updateGenre/{$i->id_genero}'>Editar Genero</a></button></li>
          </div>
          {/if}
  
        
        <hr>
        
        </li>
      </ul>
      <div>     
    {{/foreach}}

    
    {if isset($smarty.session.USER_EMAIL)}
      <div class="container-button">
      <a href="formAddGenre"><button class="btn-crear">Crear Genero</button></a>
      </div>
    {/if}
   
    
    <hr>
    {{include file="footer.tpl"}}

  