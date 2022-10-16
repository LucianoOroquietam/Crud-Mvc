<?php

require_once "app/Controller/bandasController.php";
require_once "app/Controller/generoController.php";
require_once "app/Controller/authController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/');


$action = 'home';

if(!empty($_GET['action'])){

    $action = $_GET ['action'];
}


$partsURL = explode("/", $action);


$bandasController = new bandasController();
$generoController = new generoController();
$loginController = new authController();

switch($partsURL[0]){

   case 'home':
        $bandasController->showHome();
        break;
    
   case 'generos':
        $generoController->showGenre();
        break;
     
      //show genre and band
   case 'showGenero':
         $generoController->showBandsByGenre($partsURL[1]);
         break;

   case 'showBanda':
        $bandasController->viewDetails($partsURL[1]);
        break;

     //delete band and genre   
        
   case 'delete':
        $bandasController->deleteBand($partsURL[1]);
        break;
    
   case 'deleteGenre':
        $generoController->deleteBandsByGenre($partsURL[1]);
        break;

     //show form and create band/Genre

   case 'formAdd':
        $bandasController->showForm("createBand");
        break;

   case 'createBand':
        $bandasController->createBand();
        break;
        
        
    case 'formAddGenre':
        $generoController->showFormGenre();
        break;

     case 'createGenre':
        $generoController->createGenre();
        break;

    //updates    
   case 'update':
        $bandasController->updateForm($partsURL[1]);
        break;
        
   case 'updated':
        $bandasController->finishUpdate($partsURL[1]);
        break;

   case 'updateGenre':
        $generoController->updateGenre($partsURL[1]);
        break;
     
   case 'updatedGenre':
        $generoController->finishUpdateGenre($partsURL[1]);  
        break;

    

     //Login-Logout
   case 'login':
        $loginController->showFormLogin();
        break;
     
    case 'verify':
        $loginController->validateUser();
         break;

     case 'logout':
     $loginController->logout();
     break;
       
     //hash password
   case 'hash':
       $loginController->getHash();   
        break;

   default:
     header('Location: 404.php');
     break;
        
}

