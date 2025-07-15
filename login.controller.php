<?php
require_once 'App/db/db.php';

$db = new Db();
$pdo = $db->connect();

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST['email']);
    $password = $_POST['pass'];

    if (empty($email) || empty($password)) {
        die("Preencha todos os campos.");
    }

    // Busca o usuário pelo e-mail
    $stmt = $pdo->prepare("SELECT user_id, user_name, user_pass FROM users WHERE user_email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['user_pass'])) {
        // Login bem-sucedido
        session_start();
        $_SESSION['user_id'] = $user['user_id'];
        $_SESSION['user_name'] = $user['user_name'];
        header("Location: dashboard.php");
        exit();
    } else {
        die("Não foi possível fazer o login. Verifique seu e-mail e senha.");
    }
} else {
    die("Acesso inválido.");
}
?>