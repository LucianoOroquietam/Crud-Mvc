
 <div class="container-button">
 {if isset($smarty.session.USER_EMAIL)}
 <a href="formAdd"><button class="btn-crear">Crear Banda</button></a>
{/if}
 </div>
     
<table>   
                <thead>
                <tr>
                    <th>Nombre Banda</th>
                   <th>Cantidad discos</th>
                   <th>Origen banda</th>
                    <th>Imagen banda</th>
                    {if isset($smarty.session.USER_EMAIL)}
                    <th></th>
                    <th></th>
                    {/if}
        
                </tr>
                
                </thead>
        
                
           
            {{foreach from=$bandas item=$banda}}
                <tr>
                    <td>{$banda->nombre_banda}
                    <a href="showBanda/{$banda->id_banda}">Ver detalle</a>
                    </td>
                    <td>{$banda->cantidad_discos}</td>
                    <td>{$banda->origen_banda}</td>
                    <td><img src="{$banda->imagen_banda}"></img></td>
                    {if isset($smarty.session.USER_EMAIL)}
                    <td><a href='delete/{$banda->id_banda}'><button>Eliminar </button></a></td>
                    <td><a href='update/{$banda->id_banda}'><button>Edit</button></a></td>
                    {/if}
                    
                </tr>
            {{/foreach}}                   
                 
    </table>

   

    