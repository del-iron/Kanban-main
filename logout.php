<?php
session_start();
session_unset();
session_destroy();

// Opcional: Limpar cookies de autenticação
if (isset($_COOKIE['usuario'])) {
    setcookie('usuario', '', time() - 3600, '/');
}

header("Location: login.php");
exit();
?>
