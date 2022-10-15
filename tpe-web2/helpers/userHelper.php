<?php

class userHelper{

    function checkLoggedIn(){
        session_start();
        if(!isset ($_SESSION['USER_EMAIL'])){
            $this->showLogin();
            die();
        }
    }
    
    function showLogin(){
        header('Location :' .BASE_URL. 'login');
    }

}



