*** Settings ***
Documentation   Documentação da API: http://165.227.93.41/lojinha-arquivos/Swagger.pdf
Resource        ResourceAPI.robot
Suite Setup     Conectar a minha API

*** Variable ***
${URL_API}      http://165.227.93.41/lojinha


*** Test Case ***
Conferir lista de Produtos (GET)
  Fazer Login na API
  Buscar lista de Produtos
  Conferir status code  200
  Conferir mensagem GET "Listagem de produtos realizada com sucesso"

Cadastrar novo Produto (POST)
  Cadastrar novo Produto
  Conferir mensagem POST "Produto adicionado com sucesso"
  Conferir se retorna todos os dados cadastrados para o novo produto
  Conferir status code POST  201
