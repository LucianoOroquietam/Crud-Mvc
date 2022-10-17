<?php
class bandasModel{


    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_bandas;charset=utf8', 'root', '');
    }

    function getAll(){
        $query = $this->db->prepare('SELECT * FROM bandas');
        $query->execute();

        $bandas= $query->fetchAll(PDO::FETCH_OBJ);

        return $bandas;
    }

    function getOne($id){
        $query = $this->db->prepare('SELECT * FROM bandas JOIN genero ON bandas.id_genero_fk = genero.id_genero  WHERE id_banda=?');
        $query->execute([$id]);

        $banda = $query->fetch(PDO::FETCH_OBJ);

        return $banda;

    }


    function deleteBandFromDb($id){
        $query = $this->db->prepare('DELETE FROM bandas WHERE id_banda=?');
        $query->execute([$id]);

    }



    function insertBandFromDb($banda,$discos,$origen,$genero){
        $query = $this->db->prepare('INSERT INTO bandas(nombre_banda,cantidad_discos,origen_banda,id_genero_fk) VALUES(?, ?, ?, ?)');
        $query->execute(array($banda,$discos,$origen,$genero)); 

    }



    function editBandFromDb($banda,$discos,$origen,$genero,$id){
        
        $query = $this->db->prepare('UPDATE bandas SET nombre_banda=?,cantidad_discos=?,origen_banda=?, id_genero_fk=? WHERE id_banda=?');
        $query->execute(array($banda,$discos,$origen,$genero,$id));
    }


    










}