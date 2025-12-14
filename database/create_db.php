<?php
$host = getenv('DB_HOST') ?: '127.0.0.1';
$port = (int)(getenv('DB_PORT') ?: '3306');
$user = getenv('DB_USERNAME') ?: 'root';
$pass = getenv('DB_PASSWORD') ?: '';
$db   = getenv('DB_DATABASE') ?: 'C5UEI';

$mysqli = @new mysqli($host, $user, $pass, '', $port);
if ($mysqli->connect_errno) {
    fwrite(STDERR, "MySQL connect error: " . $mysqli->connect_error . PHP_EOL);
    exit(1);
}

$sql = sprintf(
    "CREATE DATABASE IF NOT EXISTS `%s` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci",
    $mysqli->real_escape_string($db)
);
if (!$mysqli->query($sql)) {
    fwrite(STDERR, "Failed to create database: " . $mysqli->error . PHP_EOL);
    exit(1);
}

echo "Database '$db' ensured on $host:$port" . PHP_EOL;
