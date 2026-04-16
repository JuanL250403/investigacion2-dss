<?php
class Conexion
{

    private $dsn = "mysql:host=localhost;dbname=galeria_db";
    private $usuario = "root";
    private $contrasenia = "";
    private $conexion;

    public function __construct()
    {
        $this->conexion = new PDO($this->dsn, $this->usuario, $this->contrasenia);
        $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    public function obtenerConexion() {
        return $this->conexion;
    }
}
