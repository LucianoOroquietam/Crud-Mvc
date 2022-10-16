<?php

class generoModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_bandas;charset=utf8', 'root', '');
    }


    function getGenre($id){

        $query = $this->db->prepare('SELECT * FROM genero WHERE id_genero=?');
        $query->execute([$id]);

        $genre = $query->fetch(PDO::FETCH_OBJ);

        return $genre;

    }

    function showGenreFromdDb(){
        $query = $this->db->prepare("SELECT * FROM genero");
        $query->execute();

        $genreByDb = $query->fetchAll(PDO::FETCH_OBJ);
        return $genreByDb;

    }

    function editGenreFromDb($genero_banda,$historia,$instrumentos,$id){
        $query = $this->db->prepare("UPDATE genero SET genero_banda=?,historia_genero=?,instrumentos_comunes=? WHERE genero.id_genero=?");
        $query->execute(array($genero_banda,$historia,$instrumentos,$id));
    }

    function showBandByGenreFromDb($id){

        $query = $this->db->prepare('SELECT * FROM bandas WHERE id_genero_fk=?');
        $query->execute([$id]);

        $genreByBand = $query->fetchAll(PDO::FETCH_OBJ);
            
                
        return $genreByBand;
    }

    function deleteGenreFromDb($id){
        $query = $this->db->prepare('DELETE FROM genero WHERE id_genero=?');
        $query->execute([$id]);

        

    }

    

    function insertGenreFromDb($genre){
        $query = $this->db->prepare('INSERT INTO genero(genero_banda) VALUES(?)');
        $query->execute(array($genre)); 

    }


    function createGenre($genero_banda,$historia,$instrumentos){
        $query = $this->db->prepare('INSERT INTO genero(genero_banda,historia_genero,instrumentos_comunes) VALUES(?, ?, ?)');
        $query->execute(array($genero_banda,$historia,$instrumentos)); 

    }

   

    

}