*** Settings ***
Documentation    sei não fih
# pythonentra aqui. é o que não se encaixar nas outras? pdfs não entram aqui
Resource    ../main.robot

*** Keywords ***
Preencher Campo
    [Arguments]    ${LOCATOR}    ${TEXT}
     Wait Until Element Is Visible    ${LOCATOR}
    Input Text    ${LOCATOR}    ${TEXT}

Clicar no elemento
    [Arguments]    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Click Element    ${LOCATOR}

