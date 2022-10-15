<?php

require_once 'app/View/authview.php';
require_once 'app/Model/usuarioModel.php';


class authController{

    private $view;
    private $model;



    function __construct(){

        $this->model = new userModel();
        $this->view = new authView();


    }


    public function showFormLogin() {
        $this->view->formLogin();
    }


    function getHash(){
        $hash = password_hash("lulo123", PASSWORD_BCRYPT);
        echo $hash;
        //lulo123
    }


    public function validateUser()
    {
        if (!empty($_POST['email']) && ($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];
            $user = $this->model->getUser($email);
            
        }
        if (!empty($user)) {
            
            if (password_verify($password, $user->contraseña)) {

                // inicio una session para este usuario
                session_start();
                //$_SESSION['USER_PASSWORD'] = $user->password;
                $_SESSION['USER_EMAIL'] = $user->nombre_usuario;
                //$_SESSION['IS_LOGGED'] = true;

               
                header("Location: " . BASE_URL . "home");
            }
            else{
                $this->view->formLogin("El usuario o la contraseña es incorrecto.");
            }

        } else {
            $this->view->formLogin("El usuario no existe.");
            header("Location: " . BASE_URL . "login");
           }
    }


   

    function logOut(){
        session_start();
        session_destroy();
        header("Location: " . BASE_URL. "login");
    }



}



