<?php
session_start();

$respuesta = array(
    "valido" => isset($_SESSION['sesion']),
    "datos" => isset($_SESSION['sesion']) ? $_SESSION['sesion'] : null
);

session_abort();
echo json_encode($respuesta);
