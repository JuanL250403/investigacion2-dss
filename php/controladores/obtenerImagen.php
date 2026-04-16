<?php
require_once('../conexion.php');

$id = $_GET['id'];
$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$stmtImagen = $conexion->prepare("SELECT * FROM imagenes WHERE id = ?");
$stmtComentarios = $conexion->prepare("SELECT c.id, c.comentario, c.usuario_id as 'usuarioId', u.nombre_completo as 'nombre' FROM comentarios c INNER JOIN usuarios u ON u.id = c.usuario_id WHERE c.imagen_id = ?");

$stmtImagen->execute([$id]);
$stmtComentarios->execute([$id]);

if (!$imagen = $stmtImagen->fetch()) {
    echo json_encode(array(
        "error" => "No existe imagen"
    ));
    return;
}
$comentarios = [];

while ($comentario = $stmtComentarios->fetch()) {
    $comentarios[] = $comentario;
}


$datosImagen = array(
    "nombre" => $imagen["nombre"],
    "img" => $imagen['img'],
    "comentarios" => $comentarios
);

echo json_encode($datosImagen);
