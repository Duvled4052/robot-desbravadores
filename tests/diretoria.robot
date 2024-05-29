*** Settings ***
Documentation    Este documento contém os testes relacionados ao cadastro de diretorias
Resource    ../resources/main.robot

*** Test Cases ***
CT01 - Cadastrar diretoria com sucesso
    ${DIRETORIA_NOME}    FakerLibrary.Name
    Keyword logar e ir até cadastro de diretorias
    Preencher modal diretoria    ${DIRETORIA_NOME}
    Clicar no botão salvar cadastro

    Ir até última página de diretorias
    sleep    5s
    Última diretoria é a cadastrada    ${DIRETORIA_NOME}

CT02 - Input diretoria vazio
    Keyword logar e ir até cadastro de diretorias
    Clicar no botão salvar cadastro
    Página deve conter msg de diretoria obrigatório