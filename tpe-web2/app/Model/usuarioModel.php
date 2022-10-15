<?php


class userModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_bandas;charset=utf8', 'root', '');
    }


    function getUser($user){

        $query = $this->db->prepare('SELECT * FROM usuarios WHERE nombre_usuario = ?');
        $query->execute([$user]);

        $user= $query->fetch(PDO::FETCH_OBJ);


        return $user;

    }

}