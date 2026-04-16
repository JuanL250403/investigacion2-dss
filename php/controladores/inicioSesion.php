<?php
require_once('../conexion.php');


$pdo = new Conexion();
$conexion = $pdo->obtenerConexion();

$correo = $_POST['correo'];
$password = $_POST['password'];

$stmtUsuario = $conexion->prepare("SELECT * FROM usuarios WHERE correo = ?");
$stmtUsuario->execute([$correo]);


if ($usuario = $stmtUsuario->fetch()) {
    $passwordHash = $usuario['password'];

    if (password_verify($password, $passwordHash)) {
        $datosUsuario = array(
            "id" => $usuario["id"],
            "nombre" => $usuario['nombre_completo']
        );
        echo json_encode($datosUsuario);
        session_start();
        $_SESSION['sesion'] = $datosUsuario;
        session_commit();
    } else {
        echo json_encode(
            array(
                "error" => "credenciales invalidas"
            )
        );
    }
} else {
    echo json_encode(
        array(
            "error" => "usuario no existente"
        )
    );
}
