 
{{include file="header.tpl"}}

{if {$action} == "update"}
    <form method="post" action="updated/{$band->id_banda}" >

    <label for="Nombre Banda">Nombre Banda</label>
    <input type="text" name="banda" id="" value='{$band->nombre_banda}'required>
                
    <label for="">Cantidad Discos</label>
    <input type="number" name="discos" id="" value='{$band->cantidad_discos}'required>

    <label for="">Origen</label>
    <input type="text" name="origen" id="" value="{$band->origen_banda}"required>

                
    <select name="genero" required>
        <p>Seleccione Una opcion</p>
        <option value='{$band->id_genero_fk}' selected>{$band->genero_banda}</option>
            {foreach from=$genres item=$g}
                {if $g->genero_banda != $band->genero_banda}
                    <option value='{$g->id_genero}'>{$g->genero_banda}</option>
                {/if}
            {/foreach} 
        </option>
    </select>

    <button type="submit">Confirmar Edicion</button>
</form>
    
{else}
    
<form method="post" action="{$action}">
 

    <label for="">Nombre Banda</label>
    <input type="text" name="banda" id="" placeholder="Ej: Divididos" required>
                
    <label for="">Cantidad Discos</label>
    <input type="number" name="discos" id="" placeholder="10" required>

    <label for="">Origen</label>
    <input type="text" name="origen" id="" placeholder="Ej: Berlin(Alemania)" required>

    <select name="genero" required>
    <option>Seleccione una opcion</option>
            {foreach from=$genres item=$genre}
                <option value='{$genre->id_genero}'>{$genre->genero_banda}</option>
            {/foreach}   
    </select>            
   
    

    <button type="submit">Agregar Banda</button>

    {if $error}
        <p class="msg-error">{$error}</p>
    {/if}    
</form>


            
{/if}    


