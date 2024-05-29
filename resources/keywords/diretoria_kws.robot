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
    [Arguments]    ${DIRETORIA_NOME}
    Preencher Campo    ${INPUT_DIRETORIA}    ${DIRETORIA_NOME}

Página deve conter msg de diretoria obrigatório
    Element Should Be Visible    ${MSG_DIRETORIA_OBRIGATÓRIO}    5
    Page Should Contain Element    ${MSG_DIRETORIA_OBRIGATÓRIO}

Ir até última página de diretorias
    Click Element    ${BOTÃO_IR_ÚLTIMA_PÁGINA}

Última diretoria é a cadastrada
    [Arguments]    ${DIRETORIA_NOME}
    Wait Until Element Is Visible    ${ÚLTIMO_CADASTRO}
    Element Text Should Be    ${ÚLTIMO_CADASTRO}    ${DIRETORIA_NOME}
    # AINDA NÃO SEI SE TÁ FUNCIONANDO