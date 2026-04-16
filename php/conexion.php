<?php
class Conexion
{

    private $dsn = "mysql:host=localhost;dbname=galeria_db";
    private $usuario = "root";
    private $contrasenia = "";
    private $conexion;

    public function __construct()
    {
        try {
            $this->conexion = new PDO($this->dsn, $this->usuario, $this->contrasenia);
            $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (Exception $e) {
            header("Location: Error.html");
        }
    }

    public function obtenerConexion()
    {
        return $this->conexion;
    }
}
