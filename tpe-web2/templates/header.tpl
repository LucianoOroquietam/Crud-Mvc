<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">

    <title>{$titulo}</title>
</head>
            
<body>


{if isset($smarty.session.USER_EMAIL)}
<a href="logout">Logout</a>

{else}
    <a href="login">Iniciar Sesion</a>
{/if}

    <nav class="navigation">
    
        <li class="item"><a href="home">Home</a></li>
        <li class="item"><a href="generos">Generos</a></li>
       
    </nav>


   