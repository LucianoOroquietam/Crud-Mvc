<?php

class authView{
    private $smarty;

    function __construct(){
        $this->smarty= new Smarty();

    }


    //llamarlo con parametro y sin parametros message = '' valor default
    //si el parametro message no me lo pusieron , bueno ponele vacio
    function formLogin($message = ''){
       
        
        $this->smarty->assign('footer',"&#169-Luciano Oroquieta-Bandas Musicales");

        $this->smarty->assign('titulo','Login');

        $this->smarty->assign('message',$message);

        $this->smarty->display('templates/login.tpl');

    }
}