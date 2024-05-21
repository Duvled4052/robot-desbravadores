*** Settings ***
Documentation    mapear elementos da página de login

*** Variables ***
${CAMPO_EMAIL}    //*[@id="email"]
${CAMPO_SENHA}    //*[@id="password"]
${BOTAO_LOGIN}    //*[@id="login"]

${MSG_LOGIN_INVALIDO}    //div[contains(text(),'E')]

${MSG_EMAIL_OBRIGATÓRIO}    //p[contains(text(), "O email é obrigatório")]
${MSG_SENHA_OBRIGATÓRIA}    //p[contains(text(), "A senha é obrigatória")]
${MSGS_CAMPO_OBRIGATORIO}    //p[@class="css-18xtib3"]