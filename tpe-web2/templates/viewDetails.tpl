
{{include file="header.tpl"}}
{{$banda->nombre_banda}}
<table>   
    <thead>
    <tr>    
        <th>Nombre_Banda</th>
        <th>Genero</th>
        <th>Cantidad_discos</th>
        <th>Origen_banda</th>
        <th>Imagen_banda</th>
       
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

    <!-- 
     <th></th>
        <th></th>
    <td><a href='delete/{$banda->id_banda}'><button>Delete</button></a></td>
        <td><a href='update/{$banda->id_banda}'><button>Edit</button></a></td>
    -->
     