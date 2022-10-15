{{include file="header.tpl"}}


    {{foreach from=$genre item=$i}}
      <ul>  
        <li>
        <a href='showGenero/{$i->id_genero}'>{$i->genero_banda} </a>
        {if isset($smarty.session.USER_EMAIL)}
        <button> <a href='deleteGenre/{$i->id_genero}'>Eliminar</a></button>
        <button> <a href='updateGenre/{$i->id_genero}'>Editar</a></button>
        {/if}
        </li>
      </ul>   
    {{/foreach}}

    <div class="container-button">
    {if isset($smarty.session.USER_EMAIL)}
      <a href="formAddGenre"><button class="btn-crear">Crear Genero</button></a>
    {/if}
    </div>
    
    


    
    <hr>
    {{include file="footer.tpl"}}

  