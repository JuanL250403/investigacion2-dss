<?php
require_once('../conexion.php');

$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$stmt = $conexion->prepare("SELECT * FROM `imagenes`");
$stmt->execute();
$imagenes = [];
while ($row = $stmt->fetch()) {

    $imagenes[] = $row;
}
echo json_encode($imagenes);
