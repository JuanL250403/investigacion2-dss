<?php
require_once('../conexion.php');

$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$id = intval($_POST["id"]);

$stmnt = $conexion->prepare("DELETE FROM comentarios WHERE id = ?");
$stmnt->bindValue(1, $id, PDO::PARAM_INT); 
$stmnt->execute();
var_dump($id);
