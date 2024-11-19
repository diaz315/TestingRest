<?php
// validation_handler.php
// Guarda este archivo en el mismo directorio que el instalador

header('Content-Type: application/json');

// Simular retardo de red para hacer más realista
sleep(1);

// Simular respuesta exitosa
$response = array(
    'status' => 'success',
    'message' => 'Purchase code verified successfully!',
    'database' => "CREATE TABLE IF NOT EXISTS `XXXXX_settings` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `option_key` varchar(255) NOT NULL,
        `option_value` text,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
    INSERT INTO `XXXXX_settings` (`option_key`, `option_value`) 
    VALUES 
    ('site_name', 'My Application'),
    ('personal_info', 'YYYYY'),
    ('installation_date', NOW());",
    'installation_url' => $_POST['installation_url'] ?? 'http://localhost'
);

echo json_encode($response);
?>