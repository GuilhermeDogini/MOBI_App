# Resumo projeto

Projeto destiando ao Frontend utilizando Flutter e Dart, e no Backend consumindo um API de autenticação em Node

##### API Backend
- A API que o Frontend cosome esta localizada no meu Github: https://github.com/GuilhermeDogini/Auth-jwt
---

## Sobre o projeto

O **Projeto** é um App utilizando o Flutter e o Dart desenvolvido para fazer um clone de uma empressa chamada MOBI, o projeto faz requisições em uma API que está rodando no Heroku, Possui um login sem a possibilidade de fazer Registro (O login para acessar será passado abaixo, ou se quiser registrar o seu proprio utilize a API que esta no link logo acima).

##### Login e Senha 

Login: flutter@teste.com
Senha: teste123
---

## Stack

Este projeto foi desenvolvido com as seguintes tecnologias:

###### Frontend(Flutter)
  - Dart
  - Flutter
  - herokuy

###### Backend(API)
  - Node
  - MongoDB
  - express
  - Eslint
  - jwt
  - bcrypt
  - herokuy
  
*É necessário possuir a versão 3.10.1 ou superior do Flutter para executar o projeto.*
---

## Início Rápido

Para obter uma cópia do projeto em sua máquina local, abra o terminal e faça a execução dos seguintes comandos:

```bash
# Clonar repositório
$ git clone https://github.com/GuilhermeDogini/Auth-jwt.git
```
---

## Deploy

Neste projeto estamos utilizando a ferramenta **Heroku** :
### Link da aplicação no Heroku : https://app-test-final.herokuapp.com


## Executando Local (se preferir, mas a mesma esta rodando na rede Heroku)

```bash

# Entrar no diretório raíz
$ cd Auth-jwt

# Instalar dependências do repositório de autencicação e iniciar projeto
$ npm install
$ npm run start

```
---


---

## Executando com o Postman

```bash

# Entrar no diretório raíz
Crie um projeto com o nome parecido a esse "API Auth JWT" e adicione as rotas a baixo

*Antes de criarmos as rotas vamos criar Duas variáveis na API a primeira chamada "URL" com o initial value "http://localhost:4001" e o current value "http://localhost:4001"
*E a segunda chamada "TOKEN" com o initial value (Deve ser pego na rota "{{URL}}/auth/login" via POSTMAN) e o current value (Deve ser pego na rota "{{URL}}/auth/login" via POSTMAN)
*Para acessar a variável entre em "API Auth JWT" e em variables e adicione suas variaveis lá 
```
---


## Rotas API CRUD

:grey_exclamation: *Desenvolvedor, para cada rota criada, favor adicionar aqui!*

- Boas vindas (Método GET):
```
  {{URL}}/

```
- Criação de Usuários (Método POST):
```
  {{URL}}/auth/register
  
  *É necessario utilizar o "body" com o filtro "Raw" e a linguagem JSON
  *Pegue o id que vai aparecer na resposta do POSTMAN, será necessario para usar no método (Verificação de uma pessoa apena)

```

- Login de Usuário (Método POST):
```
  {{URL}}/auth/login

*É preciso usar o token pego nesta rota
*É necessario utilizar o "body" com o filtro "Raw" e a linguagem JSON

```

- Verificação de uma pessoa apenas (Método GET):
```
  {{URL}}/user/id

*É preciso usar o token pego na rota Login de Usuário : "{{URL}}/auth/login"
*É preciso do id para verificar a existencia de uma unica pessoa, que pode ser pego na rota "{{URL}}/auth/register"

```


---











