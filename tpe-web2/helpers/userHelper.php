<?php

class userHelper{

    function checkLoggedIn(){
        session_start();
        if(!isset ($_SESSION['USER_EMAIL'])){
            header('Location :' .BASE_URL. 'login');
            die();
        }
    }
    
}



