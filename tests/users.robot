*** Settings ***
Documentation    Esse arquivo possui os casos de teste de cadastro de usuários
Resource    ../resources/main.robot

*** Test Cases ***
CT01 - cadastrar usuário com 
    [Tags]    CT01
    Keyword login com sucesso
    Clicar em cadastros
    Clicar na aba usuários
    Clicar em novo cadastro
    Preencher modal name
    Preencher modal email
    Preencher modal pa
    Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário

    # validação

CT02 - cadastrar usuário nome vazio
    Keyword logar e ir até cadastro de usuários
    # Preencher modal name
    Preencher modal email
    Preencher modal pa
    Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg name vazio

CT03 - cadastrar usuário email vazio
    Keyword logar e ir até cadastro de usuários
    Preencher modal name
    # Preencher modal email
    Preencher modal pa
    Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg email vazio

CT04 - cadastrar usuário pa vazio
    Keyword logar e ir até cadastro de usuários
    Preencher modal name
    Preencher modal email
    # Preencher modal pa
    Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg pa vazio

CT05 - cadastrar usuário cpf vazio
    Keyword logar e ir até cadastro de usuários
    Preencher modal name
    Preencher modal email
    Preencher modal pa
    # Preencher modal cpf
    Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg cpf vazio

CT06 - cadastrar usuário senha vazio
    Keyword logar e ir até cadastro de usuários
    Preencher modal name
    Preencher modal email
    Preencher modal pa
    Preencher modal cpf
    # Preencher modal password
    preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg senha vazio

CT07 - cadastrar usuário confirmar senha vazio
    Keyword logar e ir até cadastro de usuários
    Preencher modal name
    Preencher modal email
    Preencher modal pa
    Preencher modal cpf
    Preencher modal password
    # preencher modal confirmpassword
    Clicar no botão salvar usuário
    Página deve conter msg confirmar senha vazio