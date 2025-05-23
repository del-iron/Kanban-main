<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="assets/css/login.css">
  <title>Gerenciador de Tarefas</title>
</head>
<body>
  <div class="head-bar"></div>
  <div style="position: fixed; top: 16px; left: 24px; z-index: 101; display: flex; align-items: center; gap: 16px;">
    <img src="assets/img/logo-esp.png" alt="Logo Esp" class="logo-esp">
    <img src="assets/img/adese_logo_.png" alt="Logo Adese" class="logo-adese">
  </div>
  <div class="cadastrar-topo">
    <span class="pergunta">Ainda não tem conta?</span>
    <a href="register.php">Cadastrar</a>
  </div>

  <section class="main-login">
    <div class="container-box" style="max-width: 1200px;">
      <div class="left-box">
        <div class="login-content">
          <div class="login-logo">
            <div class="logo-icon">
             
            </div>
            <div class="logo-text">Gerenciador de Tarefas</div>
          </div>

          <h1 class="Logar-Login">Login</h1>

          <form action="login.controller.php?action=login" method="post">
            <div class="input-group">
              <div class="input-icon">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#aaa" stroke-width="2">
                  <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                  <polyline points="22,6 12,13 2,6"></polyline>
                </svg>
              </div>
              <input type="email" name="email" placeholder="Digite seu e-mail" required>
            </div>

            <div class="input-group">
              <div class="input-icon">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#aaa" stroke-width="2">
                  <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                  <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                </svg>
              </div>
              <input type="password" name="pass" placeholder="Digite sua senha" required>
            </div>

            <button type="submit">Entrar</button>
          </form>
        </div>
      </div>
    </div>
  </section>
</body>
<footer class="footer-bar-custom">
  <span>Todos os direitos reservados &copy; 2025 Adese/CEAD</span>
</footer>
</html>
