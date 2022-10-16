
{{include file="header.tpl"}}


  <h1>Generos</h1>
  {if $error}
    {$error}
    <a href="generos">Volver</a>
  {/if}
  
    {{foreach from=$genre item=$i}}

    <div class="contenedor">
      <ul>  
        <li>
        <button> <a href='showGenero/{$i->id_genero}'>{$i->genero_banda} </a> </button>
        {if isset($smarty.session.USER_EMAIL)}
          
          <li><button> <a href='deleteGenre/{$i->id_genero}'>Eliminar Genero</a></button></li>
          <li><button> <a href='updateGenre/{$i->id_genero}'>Editar Genero</a></button></li>
          
          {/if}
  
        <li> <h3> Historia del genero: </h3> {$i->historia_genero}</li>

        <li> <h3> Instrumentos Comunes: </h3> {$i->instrumentos_comunes}</li>
        
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

  