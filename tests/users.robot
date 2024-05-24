*** Settings ***
Documentation    Esse arquivo possui os casos de teste de cadastro de usuários
Resource    ../resources/main.robot

*** Test Cases ***
CT01 - cadastrar usuário com sucesso
    [Tags]    CT01
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_NAME}    FakerLibrary.Name
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword login com sucesso
    Clicar em cadastros
    Clicar na aba usuários
    Clicar em novo cadastro
    Preencher modal name    ${CADASTRO_NAME}
    Preencher modal email    ${CADASTRO_EMAIL}
    Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Fazer logout
    Fazer login de novo usuário    ${CADASTRO_EMAIL}
    URL é home

CT02 - cadastrar usuário nome vazio
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword logar e ir até cadastro de usuários
    # Preencher modal name
    Preencher modal email        ${CADASTRO_EMAIL}
    Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg name vazio

CT03 - cadastrar usuário email vazio
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_NAME}    FakerLibrary.Name
    Keyword logar e ir até cadastro de usuários
    Preencher modal name    ${CADASTRO_NAME}
    # Preencher modal email
    Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg email vazio

CT04 - cadastrar usuário pa vazio
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_NAME}    FakerLibrary.Name
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword logar e ir até cadastro de usuários
    Preencher modal name    ${CADASTRO_NAME}
    Preencher modal email    ${CADASTRO_EMAIL}
    # Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg pa vazio

CT05 - cadastrar usuário cpf vazio
    ${CADASTRO_NAME}    FakerLibrary.Name
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword logar e ir até cadastro de usuários
    Preencher modal name    ${CADASTRO_NAME}
    Preencher modal email    ${CADASTRO_EMAIL}
    Preencher modal pa
    # Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg cpf vazio

CT06 - cadastrar usuário senha vazio
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_NAME}    FakerLibrary.Name
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword logar e ir até cadastro de usuários
    Preencher modal name    ${CADASTRO_NAME}
    Preencher modal email    ${CADASTRO_EMAIL}
    Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    # Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg senha vazio

CT07 - cadastrar usuário confirmar senha vazio
    ${CADASATRO_CPF}    FakerLibrary.Random Number    digits= 11    fix_len= True
    ${CADASTRO_NAME}    FakerLibrary.Name
    ${CADASTRO_EMAIL}    FakerLibrary.Email
    Keyword logar e ir até cadastro de usuários
    Preencher modal name    ${CADASTRO_NAME}
    Preencher modal email    ${CADASTRO_EMAIL}
    Preencher modal pa
    Preencher modal cpf    ${CADASATRO_CPF}
    Preencher modal password
    # preencher modal confirmpassword
    Clicar no botão salvar cadastro

    Página deve conter msg confirmar senha vazio