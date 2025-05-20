<html lang="pt-br">
<head>
    <meta charset="UTF-8"> <!-- Define a codificação de caracteres como UTF-8 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- Compatibilidade com IE -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Responsividade em dispositivos móveis -->
    <link rel="preconnect" href="https://fonts.googleapis.com"> <!-- Otimiza carregamento de fontes Google -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- Otimiza carregamento de fontes Google com CORS -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"> <!-- Fonte Open Sans -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- Ícones Font Awesome -->
    <link rel="stylesheet" href="assets/css/style.css"> <!-- CSS principal do projeto -->
    <link rel="stylesheet" href="assets/css/login.css"> <!-- CSS específico para a página de login -->

    <title>Gerenciador de Tarefas</title> <!-- Título da aba do navegador -->
</head>
<body>
    <div class="cadastrar-topo">
        <a href="register.php">Cadastrar</a>
    </div>
    <section class="main-login"> <!-- Seção principal da tela de login -->
        <div class="login-content"> <!-- Container centralizado do formulário -->
            <!-- Substitua o ícone pelo logo -->
            <div class="login-logo" style="margin-bottom:18px;">
                <img src="assets/img/adese_logo_.png" alt="Logo" style="width:256px;height:128px;object-fit:contain;">
            </div>
            <form action="login.controller.php?action=login" method="post"> <!-- Formulário de login, envia para login.controller.php -->
                <p class="kanban-title">Gerenciador Adese</p> <!-- Título estilizado do sistema -->
                <input type="email" name="email" placeholder="Digite seu e-mail" required> <!-- Campo para email -->
                <input type="password" name="pass" placeholder="Digite sua senha" required> <!-- Campo para senha -->
                <input type="submit" value="Entrar"> <!-- Botão de envio do formulário -->
            </form>
        </div>
    </section>
</body>
</html>