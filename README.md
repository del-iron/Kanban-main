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

# Kanban-main

## Novidade

- Adicionado botão flutuante para criar novo projeto:
  - Use a classe `.fab-novo-projeto` para exibir um botão circular fixo no canto inferior esquerdo da tela.
  - Exemplo de uso no HTML:
    ```html
    <div class="fab-novo-projeto">+</div>
    ```
  - O estilo está definido no final de `assets/css/styles.css`.

## Dica para CSS

- Para adicionar novos estilos sem perder funcionalidades já criadas, coloque os novos blocos **ao final do arquivo CSS**.
- Só altere regras existentes se quiser mudar o visual de algo já presente.

## Como testar

1. Inicie o servidor local (`xampp` ou similar).
2. Acesse a aplicação pelo navegador.
3. O botão flutuante deve aparecer no canto inferior esquerdo.
4. Personalize o botão conforme necessário editando a classe `.fab-novo-projeto` no CSS.

## Outras informações

- O cadastro de usuários e demais funcionalidades seguem integrados ao banco de dados conforme descrito anteriormente.
- Para dúvidas sobre integração ou customização de estilos, consulte este README ou o arquivo CSS.

## Licença

Este projeto é open-source e está sob a licença MIT.

## Autor

Desenvolvido por [Seu Nome](https://github.com/del-iron)

## Pergunta frequente

**Mais de um usuário pode acessar o mesmo projeto e dividir as mesmas tarefas?**

Atualmente, cada projeto está vinculado a apenas um usuário (campo `fk_user_id` na tabela `projects`). Ou seja, apenas o usuário criador do projeto pode visualizar e gerenciar suas tarefas. Não há compartilhamento de projetos ou tarefas entre diferentes usuários por padrão.

Se desejar implementar colaboração entre usuários em um mesmo projeto, será necessário adaptar o banco de dados e o código para permitir múltiplos usuários por projeto (ex: criando uma tabela de associação entre usuários e projetos).

## O que seria necessário para permitir que diversos usuários acessem o mesmo projeto?

Para permitir colaboração de vários usuários em um mesmo projeto, seria necessário:

1. **Banco de Dados**
   - Criar uma tabela intermediária (ex: `project_users`) para associar múltiplos usuários a cada projeto:
     ```sql
     CREATE TABLE project_users (
         project_id INT NOT NULL,
         user_id INT NOT NULL,
         PRIMARY KEY (project_id, user_id),
         FOREIGN KEY (project_id) REFERENCES projects(project_id),
         FOREIGN KEY (user_id) REFERENCES users(user_id)
     );
     ```
   - Remover a dependência exclusiva do campo `fk_user_id` em `projects` (ou mantê-lo apenas como "criador").

2. **Backend/PHP**
   - Adaptar as consultas para buscar projetos onde o usuário está associado via `project_users`.
   - Permitir adicionar/remover usuários de um projeto.
   - Ajustar permissões de visualização/edição conforme a associação.

3. **Frontend**
   - Interface para convidar/adicionar usuários ao projeto.
   - Exibir lista de membros do projeto.

4. **Regras de Negócio**
   - Definir permissões: todos podem editar? Só o criador pode excluir?
   - Notificações para novos membros, etc.

**Resumo:**  
É preciso criar uma relação muitos-para-muitos entre usuários e projetos, adaptar as queries e a interface para suportar colaboração.


