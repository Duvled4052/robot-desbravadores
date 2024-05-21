*** Settings ***
Documentation    Este documento possui as keywords de cadastro de diretoria
Resource    ../main.robot

*** Keywords ***
Clicar na aba diretorias
    Wait Until Element Is Visible    ${ABA_DIRETORIAS}
    Click Element    ${ABA_DIRETORIAS}
    Capture Page Screenshot    aba_diretorias.png

Keyword logar e ir até cadastro de diretorias
    Keyword login com sucesso
    Clicar em cadastros
    Clicar na aba diretorias
    Clicar em novo cadastro

Preencher modal diretoria
    Preencher Campo    ${INPUT_DIRETORIA}    Nomediretoria

Página deve conter msg de diretoria obrigatório
    Element Should Be Visible    ${MSG_DIRETORIA_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_DIRETORIA_OBRIGATÓRIO}