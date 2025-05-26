<?php
require_once 'App/db/db.php'; // Caminho correto para a classe Db

// Conecta usando a classe existente
$db = new Db();
$pdo = $db->connect();

// Verifica se o formulário foi enviado via POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    if (empty($username) || empty($email) || empty($password)) {
        die("Preencha todos os campos.");
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("E-mail inválido.");
    }

    // Verifica se o e-mail já está cadastrado
    $stmt = $pdo->prepare("SELECT user_id FROM users WHERE user_email = ?");
    $stmt->execute([$email]);
    if ($stmt->rowCount() > 0) {
        die("E-mail já cadastrado.");
    }

    // Criptografa a senha
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Insere no banco
    $stmt = $pdo->prepare("INSERT INTO users (user_name, user_email, user_pass) VALUES (?, ?, ?)");
    $success = $stmt->execute([$username, $email, $hashedPassword]);

    if ($success) {
        header("Location: index.php?registro=sucesso");
        exit();
    } else {
        die("Erro ao registrar usuário.");
    }
} else {
    die("Acesso inválido.");
}
?>
