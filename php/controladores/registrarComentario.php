<?php
require_once('../conexion.php');

$usuarioId = $_POST['usuarioId'];
$imagenId = $_POST['imagenId'];
$comentario = $_POST['comentario'];

$pdo = new Conexion();
$conexion  = $pdo->obtenerConexion();

$stmnt = $conexion->prepare("INSERT INTO `comentarios` (`usuario_id`, `imagen_id`, `comentario`) VALUES (?, ?, ?)");
echo $stmnt->execute([$usuarioId, $imagenId, $comentario]);


