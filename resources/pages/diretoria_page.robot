*** Settings ***
Documentation    Este documento contém o mapeamento dos elementos da página home relacionados ao cadastro de diretorias
Resource    ../main.robot

*** Variables ***
${ABA_DIRETORIAS}    //span[contains(text(), "Diretorias")]
${INPUT_DIRETORIA}    //input[@id="boardName"]
${MSG_DIRETORIA_OBRIGATÓRIO}    //p[contains(text(), "O campo diretoria é obrigatório")]
${ÚLTIMO_CADASTRO}    //*[@class="css-18psgb0"]/li[last()]