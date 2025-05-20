<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <link rel="stylesheet" href="assets/css/register.css">
</head>
<body>
    <div class="register-box">
      <div class="logo"><img src="assets/img/adese_logo_.png"></div>
      <h2>Crie sua conta</h2>
      <form>
        <div class="form-group">
          <label for="email">E-mail</label>
          <input type="email" id="email" placeholder="Digite seu e-mail" required>
        </div>
        <div class="form-group">
          <label for="username">Usuário</label>
          <input type="text" id="username" placeholder="Nome de usuário" required>
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
</body>
</html>