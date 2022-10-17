

{{include file="header.tpl"}}

{if $error}
    <p class="msg-error">{$error}</p>


{else}
    
    <h1>Genero:{$genre->genero_banda}</h1>

<table>   
    
    <thead>
        <th>Nombre De La Banda</th> 
        <th>imagen De La banda</th>
    </thead>

   



    {{foreach from=$genreBand item=$banda}}
    <tr>
        <td>{$banda->nombre_banda}</td>
        <td><img src="{$banda->imagen_banda}"></img></td>
    </tr>
    {{/foreach}}                   
    
</table>

    
{/if}

