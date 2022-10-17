
{{include file="header.tpl"}}

<table>   
    <thead>
    <tr>    
      <th>Nombre De La Banda</th>
      <th>Genero De La Banda</th>
      <th>Cantidad De Discos</th>
      <th>Origen De La Banda</th>
      <th>Imagen De La Banda</th>
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

    