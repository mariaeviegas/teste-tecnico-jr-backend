# 🚀 Gerenciador de Tarefas - API

Este é o backend de um projeto de gerenciamento de tarefas inspirado no quadro Kanban. A API foi desenvolvida com Ruby on Rails e oferece endpoints para gerenciar tarefas de forma eficiente e organizada.

## Tecnologias Utilizadas

- **Ruby on Rails**
- **SQLite**

## Funcionalidades

- **Criação de tarefas**: Endpoint para criar novas tarefas.
- **Leitura de tarefas**: Endpoint para listar todas as tarefas ou consultar tarefas específicas.
- **Edição de tarefas**: Endpoint para atualizar os detalhes de uma tarefa existente.
- **Exclusão de tarefas**: Endpoint para remover tarefas concluídas ou desnecessárias.

## Como Rodar o Projeto

### Backend

1. **Clone o repositório**
   ```sh
   git clone https://github.com/mariaeviegas/teste-tecnico-jr-backend.git
   cd teste-tecnico-jr-backend

2. **Instale as dependências**
   
   - Certifique-se de ter o Ruby e o Rails instalados.
   - Instale as gems do projeto:
     
   ```sh
   bundle install

3. **Configure o banco de dados**
   
   - Limpe o banco de dados atual, crie novamente e execute as migrações.
     
   ```sh
   rails db:drop
   rails db:create
   rails db:migrate

4. **Inicie o servidor**
   ```sh
   rails server

Backend pronto para ser consumido :) Para mais informações sobre como utilizar a interface, consulte as instruções no repositório do frontend abaixo:

[https://github.com/mariaeviegas/teste-tecnico-jr-frontend.git](https://github.com/mariaeviegas/teste-tecnico-jr-frontend.git)


