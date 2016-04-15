<?php
    session_start();

    include "datosConexion.php";

    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contrasena'];
    
    $conexion = mysqli_connect($bd_serv,$bd_usua,$bd_contra) or die("No se pudo autentificar con la Base de Datos. ");
    mysqli_select_db($conexion,$bd_nombre)  or die ("No se pudo conectar a la Base de Datos. ");

    $path = sprintf("SELECT * FROM login WHERE usuario = '$usuario' AND contrasena = '$contrasena'");
    $query = mysqli_query($conexion, $path);
    $result =  mysqli_num_rows( $query );

    if( $result == 1 ){
        $_SESSION['user'] = $usuario;
        header("Location: principal.html");		
        exit();
    }else{
        session_destroy();
        header("Location: login.html");
        exit();
    }
?>