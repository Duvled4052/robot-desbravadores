*** Settings ***
Documentation    Esse arquivo possui as keywords de cadastro de usuário - vão ser puxadas pelo users.robot
Resource    ../main.robot

*** Keywords ***
Keyword login com sucesso
    Acessar Pagina de login
    Inserir email
    Inserir password
    Clicar no botão
    URL é home

Clicar em cadastros
    Wait Until Element Is Visible    ${ABA_CADASTROS}
    Click Element    ${ABA_CADASTROS}
    Capture Page Screenshot    aba_cadastros.png

Clicar na aba usuários
    Wait Until Element Is Visible    ${ABA_USUÁRIOS}
    Click Element    ${ABA_USUÁRIOS}
    Capture Page Screenshot    aba_usuário.png

Clicar em novo cadastro
    Wait Until Element Is Visible    ${BOTÃO_NOVO_CADASTRO}
    Click Element    ${BOTÃO_NOVO_CADASTRO}
    Wait Until Element Is Visible    ${BOTÃO_SALVAR_CADASTRO}
    Capture Page Screenshot    modal_abert.png

Keyword logar e ir até cadastro de usuários
    Keyword login com sucesso
    Clicar em cadastros
    Clicar na aba usuários
    Clicar em novo cadastro


# preencher certo
Preencher modal name
    Preencher Campo    ${INPUT_FULLNAME}    ${CADASTRO_NAME}

Preencher modal email
    Preencher Campo    ${INPUT_EMAIL}    ${CADASTRO_EMAIL}

Preencher modal pa
    Preencher Campo    ${INPUT_ACESSPROFILE}    ${CADASTRO_PA}

Preencher modal cpf
    Preencher Campo    ${INPUT_CPF}    ${CADASTRO_CPF}

Preencher modal password
    Preencher Campo    ${INPUT_PASSWORD}    ${CADASTRO_PASSWORD}

preencher modal confirmpassword
    Preencher Campo    ${INPUT_CONFIRM_PASSWORD}    ${CADASTRO_PASSWORD}


# AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
Clicar no botão salvar cadastro
    Click Element    ${BOTÃO_SALVAR_CADASTRO}

Página deve conter msg name vazio
    Wait Until Element Is Visible    ${MSG_NAME_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_NAME_OBRIGATÓRIO}

Página deve conter msg email vazio
    Wait Until Element Is Visible    ${MSG_EMAIL_OBRIGATÓRIO_USUÁRIOS}    5
    Page Should Contain Element    ${MSG_EMAIL_OBRIGATÓRIO_USUÁRIOS}

Página deve conter msg pa vazio
    Wait Until Element Is Visible    ${MSG_PA_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_PA_OBRIGATÓRIO}

Página deve conter msg cpf vazio
    Wait Until Element Is Visible    ${MSG_CPF_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_CPF_OBRIGATÓRIO}

Página deve conter msg senha vazio
    Wait Until Element Is Visible    ${MSG_SENHA_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_SENHA_OBRIGATÓRIO}

Página deve conter msg confirmar senha vazio
    Wait Until Element Is Visible    ${MSG_CONFIRMAR_SENHA_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_CONFIRMAR_SENHA_OBRIGATÓRIO}

