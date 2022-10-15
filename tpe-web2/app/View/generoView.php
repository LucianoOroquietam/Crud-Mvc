<?php

class generoView{

    private $smartyGenre;

    public function __construct()
    {
        $this->smartyGenre= new Smarty();
    }

    function showGenreById($genre){
        session_start();
        $this->smartyGenre->assign("genre", $genre);
        $this->smartyGenre->assign('titulo',"Bandas Musicales");
        $this->smartyGenre->assign('footer',"&#169-Luciano Oroquieta-Bandas Musicales");

        $this->smartyGenre->display("templates/genre.tpl");
    }

    function bandByGenre($genreBand,$genre){
        $this->smartyGenre->assign('titulo',"Bandas Musicales");
        $this->smartyGenre->assign('encabezado',"Genero");
        $this->smartyGenre->assign('genre',$genre);
        $this->smartyGenre->assign("genreBand", $genreBand);
        $this->smartyGenre->display("templates/bandByGenre.tpl");
    }

    function addGenreForm($genres){
      
        
        $this->smartyGenre->assign("genres", $genres);
        $this->smartyGenre->display("templates/form.tpl");
    }


    function showFormGenreUpdate($genre){

        $this->smartyGenre->assign('titulo','Genero');
        $this->smartyGenre->assign('genre', $genre);

        var_dump($genre);

        $this->smartyGenre->display("templates/formGenre.tpl");

    }

    function showFormGenre(){
        $this->smartyGenre->display("templates/formCreateGenre.tpl");
    }

    function showGenreLocation(){
        header("Location: ". BASE_URL ."generos");
    }

}