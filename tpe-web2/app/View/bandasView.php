<?php

require_once ('libs/Smarty.class.php');


class bandasView{
    private $smarty;

    public function __construct()
    {
        $this->smarty= new Smarty();
    }

    function showBandas($bandas){
        session_start();
        $this->smarty->assign('titulo',"Bandas Musicales");
        $this->smarty->assign('encabezado',"Agrupaciones Musicales");
        $this->smarty->assign('bandas',$bandas);
        $this->smarty->assign('footer',"&#169-Luciano Oroquieta-Bandas Musicales");

        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/viewTableAll.tpl');
        $this->smarty->display('templates/footer.tpl');
    
        }

    function showDetails($banda){
        $this->smarty->assign('titulo',"Bandas Musicales");
        $this->smarty->assign('banda', $banda);

        $this->smarty->display('templates/viewDetails.tpl');
        
    } 
    
    
    function showFormBand($action,$genres){
        $this->smarty->assign('titulo',"Bandas Musicales");
        $this->smarty->assign("action", $action);
        $this->smarty->assign("genres", $genres);
        $this->smarty->display("templates/form.tpl");
    }

    function showFormUpdate($band,$genres,$action){
        $this->smarty->assign('titulo',"Bandas Musicales");
        $this->smarty->assign('action', $action);
        $this->smarty->assign('band', $band);
       
        $this->smarty->assign('genres', $genres);
        $this->smarty->display("templates/form.tpl");


    }

    function showHomeLocation(){
        header("Location: ". BASE_URL ."home");
    }


    

}

