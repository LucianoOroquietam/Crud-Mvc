{{include file="header.tpl"}}

<form method="POST" action="createGenre">

<label for="Nombre Banda">Genero Banda</label>
<input type="text" name="genero_banda" id="" value='' required>
            
<label for="">historia genero</label>
<input type="text" name="historia" id="" value='' required>

<label for="">instrumentos comunes</label>
<input type="text" name="instrumentos" id="" value='' required>

<button type="submit">Confirmar Edicion</button>

</form>


{if $error}
    <p class="msg-error">{$error}</p>
{/if}

