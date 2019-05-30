<?php
    $dsn = 'mysql:host=localhost;dbname=truxxit';
    $username = 'root';
    $passworddb = 'welcome';

    try {
        $db = new PDO($dsn, $username, $passworddb);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>