<?php
require_once('../conexion.php');
$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$password = $_POST['password'];
$stmtVerCorreo = $conexion->prepare("SELECT COUNT(*) as 'usuarios' FROM usuarios WHERE correo = ?");
$stmtVerCorreo->execute([$correo]);

if ($usuariosCorreo = $stmtVerCorreo->fetch()) {

    if ($usuariosCorreo['usuarios'] > 0) {
        echo json_encode(array(
            "error" => "Un usuario con ese correo ya existe"
        ));
    } else {

        $passwordHash = password_hash($password, PASSWORD_DEFAULT);
        $stmtRegistrar = $conexion->prepare("INSERT INTO `usuarios` (`nombre_completo`, `correo`, `password`) VALUES (?, ?, ?)");

        $registro = $stmtRegistrar->execute([$nombre, $correo, $passwordHash]);

        if ($registro) {
            echo json_encode(array(
                "mensaje" => "usuario registrado"
            ));
        } else {
            echo json_encode(array(
                "error" => "error al momento de registrar usuario"
            ));
        }
    }
} else {
}
