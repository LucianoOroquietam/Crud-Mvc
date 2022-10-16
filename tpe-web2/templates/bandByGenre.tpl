

{{include file="header.tpl"}}

<h1>Genero:{$genre->genero_banda}</h1>

<table>   
    
    <thead>
        <th>Nombre Banda</th> 
        <th>imagen banda</th>
    </thead>

   



    {{foreach from=$genreBand item=$banda}}
    <tr>
        <td>{$banda->nombre_banda}</td>
        <td><img src="{$banda->imagen_banda}"></img></td>
    </tr>
    {{/foreach}}                   
    
</table>