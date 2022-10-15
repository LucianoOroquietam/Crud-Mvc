{{include file="header.tpl"}}

<form method="POST" action="updatedGenre/{$genre->id_genero}">

<label for="Nombre Banda">Genero Banda</label>
<input type="text" name="genero_banda" id="" value='{$genre->genero_banda}'>
            
<label for="">historia genero</label>
<input type="text" name="historia" id="" value='{$genre->historia_genero}'>

<label for="">instrumentos comunes</label>
<input type="text" name="instrumentos" id="" value='{$genre->instrumentos_comunes}'>

<button type="submit">Confirmar Edicion</button>
</form>

