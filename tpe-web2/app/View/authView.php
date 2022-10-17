<?php

class authView{
    private $smarty;

    function __construct(){
        $this->smarty= new Smarty();

    }

    function formLogin($message = ''){
       
        
        $this->smarty->assign('footer',"&#169-Luciano Oroquieta-Bandas Musicales");

        $this->smarty->assign('titulo','Login');

        $this->smarty->assign('message',$message);

        $this->smarty->display('templates/login.tpl');

    }
}