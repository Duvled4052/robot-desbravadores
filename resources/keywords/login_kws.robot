*** Settings ***
Documentation    Esse arquivo possui as keywords de login - puxadas pelo login.robot
Resource    ../main.robot

*** Keywords ***
Acessar Pagina de login
    Open Browser    ${URL_LOGIN}    ${NAVEGADOR}
    Wait Until Location Is    ${URL_LOGIN}    20
    Capture Page Screenshot    pagina_aberta.png



Inserir email
    Preencher Campo    ${CAMPO_EMAIL}    ${EMAIL}

Inserir email inválido
    Preencher Campo    ${CAMPO_EMAIL}    ${EMAIL_INVÁLIDO}

Inserir password
    Preencher Campo    ${CAMPO_SENHA}    ${PASSWORD}

Inserir password inválida
    Preencher Campo    ${CAMPO_SENHA}    ${PASSWORD_INVÁLIDA}



Clicar no botão
    Click Element    ${BOTAO_LOGIN}
    



URL é home
    Wait Until Location Is    ${URL_HOME}    12
    Location Should Be    ${URL_HOME}
    Capture Page Screenshot    login_feito.png

Página contém mensagem de login inválido
    Wait Until Element Is Visible    ${MSG_LOGIN_INVALIDO}    10
    Element Should Be Visible    ${MSG_LOGIN_INVALIDO}
    Capture Page Screenshot    login_inválido.png

Página contém mensagem de email obrigatório
    Wait Until Element Is Visible    ${MSG_EMAIL_OBRIGATÓRIO}    10
    Element Should Be Visible    ${MSG_EMAIL_OBRIGATÓRIO}
    Capture Page Screenshot    email_vazio.png

Página contém mensagem de senha obrigatória
    Wait Until Element Is Visible    ${MSG_SENHA_OBRIGATÓRIA}    10
    Element Should Be Visible    ${MSG_SENHA_OBRIGATÓRIA}
    Capture Page Screenshot    senha_vazia.png

Página contém ambas as mensagens de campo
    Element Should Be Visible    ${MSGS_CAMPO_OBRIGATORIO}
    Capture Page Screenshot    campos_vazios.png



# Pagina contem elemento logout
#     Page Should Contain    text

Fazer logout
    Click Element    //button[contains(text(), "Logout")]