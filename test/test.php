<?php
$hostname = 'db';
$username = 'usuario';
$password = 'password';
$database = 'miapp';

try {
    $conn = new mysqli($hostname, $username, $password, $database);
    
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }
    
    echo "¡Conexión exitosa a MySQL!";
    
    $conn->close();
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}


$link = mysqli_connect($hostname, $username, $password);
                        if (mysqli_connect_errno()) {
                            $error_message = mysqli_connect_error();
                            echo "<div class='alert alert-error'><i class='icon-remove'></i> Could not connect to MYSQL! Error: " . $error_message . "</div>";
                            echo "<div class='alert alert-error'><i class='icon-remove'></i> Could not connect to MYSQL!</div>";
                        }