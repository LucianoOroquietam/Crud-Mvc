<?php

require_once "app/View/generoView.php";
require_once "app/Model/generoModel.php";
require_once 'helpers/userHelper.php';



class generoController{
    private $viewG;
    private $modelG;
    private $modelB;
    private $helper;
    
    
    function __construct(){
        $this->viewG = new generoView();
        $this->modelG = new generoModel();
        $this->modelB = new bandasModel();
        $this->helper = new userHelper();
        
    }

    function showGenre(){
        session_start();

        $genre = $this->modelG->getGenreFromdDb();

        $this->viewG->showGenreById($genre);
    }

    function showBandsByGenre($id){
        session_start();
        $genre = $this->modelG->getOne($id);
        $bandBygenre = $this->modelB->getBandByGenreFromDb($id);
        if(!empty($bandBygenre)){
            $this->viewG->bandByGenre($bandBygenre,$genre); 
        }
        else{
           
            $this->viewG->bandByGenre(null,null, "ERROR!!! no se puede mostrar el genero " . $genre->genero_banda . " ya que no contiene ninguna banda");
        }
        
       
    }

    function deleteBandsByGenre($id){
        $this->helper->checkLoggedIn();
        

        $bands = $this->modelB->getBandByGenreFromDb($id);


        if(empty($bands)){
            $this->modelG->deleteGenreFromDb($id);
            $this->viewG->showGenreLocation();
           
        }
        else{
            $this->viewG->showGenreById(null, "ERROR!!! no se puede borrar ,porque hay bandas pertenecientes a ese genero");
               
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
        
        $genre = $this->modelG->getOne($id);
        
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
        }
        
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
     else{
        $this->viewG->showFormGenre("Complete los campos para crear el genero de una banda");
     }
    }

    

}  