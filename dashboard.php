<!DOCTYPE html>
<html lang="pt-br">
<head>
    <!-- ...existing code... -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- ...existing code... -->
</head>
<body>
    <!-- ...existing code... -->
    <?php
    // Garante que $tarefas está definido como array, mesmo se não houver tarefas
    if (!isset($tarefas) || !is_array($tarefas)) {
        $tarefas = [];
    }

    foreach ($tarefas as $tarefa) {
        $status = strtolower(trim($tarefa['status']));
        $statusClass = '';
        switch ($status) {
            case 'fazer':
                $statusClass = 'card-status-fazer';
                break;
            case 'em andamento':
                $statusClass = 'card-status-andamento';
                break;
            case 'concluída':
            case 'concluido':
                $statusClass = 'card-status-concluido';
                break;
            default:
                $statusClass = '';
        }
        echo '<div class="card ' . $statusClass . '">';
        // ...existing code para conteúdo do card...
        echo '</div>';
    }
    ?>
    <!-- ...existing code... -->
</body>
</html>