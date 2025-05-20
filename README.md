# Excellis
Aplicação web de gerenciamento de tarefas baseado na metodologia ágil Kanban. Desenvolvido com PHP, MySQL e JavaScript;

É um nome poderoso, elegante e cheio de significado — transmite imediatamente:

Excelência com propósito. Excelência para Deus.
(💡 Inspirado em Colossenses 3:23 — “façam tudo como para o Senhor”)

## Features
### Usuário
[x] criar usuário <br>
[x] login com email

### Projeto
[x] criar novo projeto <br>
[x] excluir projeto <br>
[x] editar nome do projeto

### Tarefa
[x] criar nova tarefa <br>
[x] excluir tarefa <br>
[x] editar nome da tarefa <br>
[x] editar descrição da tarefa <br>
[x] marcar tarefa como "em andamento" <br>
[x] marcar tarefa como "concluída" <br>

## Instalação

1. Clone este repositório:
   ```
   git clone https://github.com/del-iron/kanban.git
   ```
2. Importe o banco de dados MySQL usando o arquivo `kanban.sql` (caso exista).
3. Configure o acesso ao banco de dados no arquivo de conexão (`config.php` ou similar).
4. Certifique-se de que o Apache e o MySQL estejam rodando (XAMPP recomendado).
5. Acesse `http://localhost/Kanban-main` no navegador.

## Estrutura do Projeto

- `index.php` - Tela de login
- `register.php` - Cadastro de usuário
- `dashboard.php` - Painel principal do Kanban
- `assets/css/` - Arquivos de estilo (CSS)
- `assets/js/` - Scripts JavaScript
- `assets/img/` - Imagens do projeto

## Tecnologias Utilizadas

- PHP 7+
- MySQL/MariaDB
- JavaScript (ES6)
- HTML5 & CSS3
- Font Awesome
- Google Fonts (Open Sans)

## Melhorias Visuais (UI)

### Cores com Significado

Os cards de tarefas possuem cores distintas para facilitar o reconhecimento do status:

- **Fazer:** azul claro
- **Em andamento:** amarelo
- **Concluído:** verde

Isso proporciona identificação visual imediata do progresso das tarefas.

## Telas

- Login
- Cadastro de usuário
- Dashboard Kanban com projetos e tarefas
- Edição de projetos e tarefas

## Licença

Este projeto é open-source e está sob a licença MIT.

## Autor

Desenvolvido por [Seu Nome](https://github.com/del-iron)


