<?php

require_once "app/View/generoView.php";
require_once "app/Model/generoModel.php";
require_once 'helpers/userHelper.php';



class generoController{
    private $viewG;
    private $modelG;
    private $helper;
    
    function __construct(){
        $this->viewG = new generoView();
        $this->modelG= new generoModel();
        $this->helper = new userHelper();
        
    }

    function showGenre(){
        session_start();
        $genre = $this->modelG->showGenreFromdDb();
        $this->viewG->showGenreById($genre);
    }

    function showBandsByGenre($id){
        $genre = $this->modelG->getGenre($id);
        $bandBygenre = $this->modelG->showBandByGenreFromDb($id);
        $this->viewG->bandByGenre($bandBygenre,$genre); 
       
    }

    function deleteBandsByGenre($id){
        $this->helper->checkLoggedIn();
        

        $genre = $this->modelG->showBandByGenreFromDb($id);


        if(empty($genre)){
            $this->modelG->deleteGenreFromDb($id);
            $this->viewG->showGenreLocation();
           
        }
        else{
            $this->viewG->showGenreById(null, "no se puede borrar dicho genero, porque hay bandas pertenecientes a ese genero");
               
        }
    }


    

    function createBand(){
        $this->helper->checkLoggedIn();
        $genero = $_POST['genero'];

        $this->modelG->insertGenreFromDb($genero);

        header("Location: " . BASE_URL. "home");
    }



    function updateGenre($id){
        $this->helper->checkLoggedIn();
        
        $genre = $this->modelG->getGenre($id);
        
        $this->viewG->showFormGenreUpdate($genre);
    }

    function finishUpdateGenre($id){
        $this->helper->checkLoggedIn();
        
        if(!empty($_POST["genero_banda"]) && $_POST["historia"] && $_POST["instrumentos"]){
            $genero_banda = $_POST['genero_banda'];
            $historia = $_POST['historia'];
            $instrumentos = $_POST['instrumentos'];

        $this->modelG->editGenreFromDb($genero_banda,$historia,$instrumentos,$id);
       
        $this->viewG->showGenreLocation();
        }//else COMPLETALO CAPO

        

    }
    
    
    function showFormGenre(){
        $this->helper->checkLoggedIn();

        $this->viewG->showFormGenre();
    }

    function createGenre(){
        $this->helper->checkLoggedIn();
        if(!empty($_POST["genero_banda"]) && $_POST["historia"] && $_POST["instrumentos"]){
            $genero_banda = $_POST['genero_banda'];
            $historia = $_POST['historia'];
            $instrumentos = $_POST['instrumentos'];

            $this->modelG->createGenre($genero_banda,$historia,$instrumentos);
            $this->viewG->showGenreLocation();
     }
    }

    

}  