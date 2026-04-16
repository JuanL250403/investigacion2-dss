<?php
require_once('../conexion.php');

$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$id = intval($_POST["id"]);

$stmnt = $conexion->prepare("DELETE FROM comentarios WHERE id = ?");
if(!$stmnt->execute([$id])){
    echo json_encode(array(
        "error" => "error al eliminar comentario"
    ));
}

