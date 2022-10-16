
{{include file="header.tpl"}}

<table>   
    <thead>
    <tr>    
        <th>Nombre Banda</th>
        <th>Genero</th>
        <th>Cantidad discos</th>
        <th>Origen banda</th>
        <th>Imagen banda</th>
       
    </tr>
    
    </thead>
 
    
      <tr>

    
        <td>{{$banda->nombre_banda}}</td>
        <td>{{$banda->genero_banda}}</td>
        <td>{{$banda->cantidad_discos}}</td>
        <td>{{$banda->origen_banda}}</td>
        <td><img src='{$banda->imagen_banda}'></img></td>
        

    </tr>

    </table>

    