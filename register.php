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
        <form>
          <div class="form-group">
            <label for="username">Usuário</label>
            <input type="text" id="username" placeholder="Nome de usuário" required>
          </div>
          <div class="form-group">
            <label for="email">E-mail</label>
            <input type="email" id="email" placeholder="Digite seu e-mail" required>
          </div>
          <div class="form-group">
            <label for="password">Senha</label>
            <input type="password" id="password" placeholder="Crie uma senha" required>
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
