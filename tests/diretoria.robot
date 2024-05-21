*** Settings ***
Documentation    Este documento contém os testes relacionados ao cadastro de diretorias
Resource    ../resources/main.robot

*** Test Cases ***
CT01 - Cadastrar diretoria com sucesso
    Keyword logar e ir até cadastro de diretorias
    Preencher modal diretoria
    Clicar no botão salvar cadastro

CT02 - Input diretoria vazio
    Keyword logar e ir até cadastro de diretorias
    Clicar no botão salvar cadastro
    Página deve conter msg de diretoria obrigatório