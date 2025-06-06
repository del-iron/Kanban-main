<?php
// Processamento do cadastro
$mensagem = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Conexão com o banco
    $conn = new mysqli('localhost', 'root', '', 'kanban');
    if ($conn->connect_error) {
        $mensagem = 'Erro de conexão com o banco de dados.';
    } else {
        $username = trim($_POST['username'] ?? '');
        $email = trim($_POST['email'] ?? '');
        $password = trim($_POST['password'] ?? '');

        if ($username && $email && $password) {
            // Verifica se o email já existe
            $stmt = $conn->prepare("SELECT user_id FROM users WHERE user_email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                $mensagem = 'E-mail já cadastrado.';
            } else {
                $stmt->close();
                // Insere novo usuário
                $hash = md5($password); // igual ao banco atual
                $stmt = $conn->prepare("INSERT INTO users (user_name, user_email, user_pass) VALUES (?, ?, ?)");
                $stmt->bind_param("sss", $username, $email, $hash);
                if ($stmt->execute()) {
                    $mensagem = 'Cadastro realizado com sucesso!';
                } else {
                    $mensagem = 'Erro ao cadastrar usuário.';
                }
                $stmt->close();
            }
            $conn->close();
        } else {
            $mensagem = 'Preencha todos os campos.';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Cadastro - Adese</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/register.css">
</head>
<body>
  <div style="position: fixed; top: 16px; left: 24px; z-index: 101; display: flex; align-items: center; gap: 16px;">
    <img src="assets/img/logo-esp.png" alt="Logo Governo" class="logo-esp">
    <img src="assets/img/adese_logo_.png" alt="Logo Adese" class="logo-adese">
  </div>
  <div class="main-register-container">
    <!-- Imagem à esquerda -->
    <div class="image-side">
      <img src="assets/img/cead.png" alt="Ilustração visual do sistema" class="img-cadastramento">
    </div>

    <!-- Formulário à direita -->
    <div class="form-side">
      <div class="register-box">
        <div class="logo">
          <img src="assets/img/adese_logo_branco.png" alt="Logo Adese">
        </div>
        <h2>Crie sua conta</h2>
        <?php if (!empty($mensagem)): ?>
          <div style="color: red; margin-bottom: 10px;"><?php echo htmlspecialchars($mensagem); ?></div>
        <?php endif; ?>
        <form method="post" action="register.controller.php">
          <div class="form-group">
            <label for="username">Usuário</label>
            <input type="text" id="username" name="username" placeholder="Nome de usuário" required>
          </div>
          <div class="form-group">
            <label for="email">E-mail</label>
            <input type="email" id="email" name="email" placeholder="Digite seu e-mail" required>
          </div>
          <div class="form-group">
            <label for="password">Senha</label>
            <input type="password" id="password" name="password" placeholder="Crie uma senha" required>
          </div>
          <button type="submit">Registrar</button>
        </form>
        <div class="footer">
          Já tem conta? <a href="index.php">Entrar</a>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer-bar-custom">
    <span>Todos os direitos reservados &copy; 2025 Adese/CEAD</span>
  </footer>
</body>
</html>
