<?php
    $dsn = 'mysql:host=localhost;dbname=truxxit';
    $username = 'root';
    $passworddb = '1003';

    try {
        $db = new PDO($dsn, $username, $passworddb);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>