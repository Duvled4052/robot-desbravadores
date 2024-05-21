*** Settings ***
Documentation    Este arquivo contém o mapeamento dos elementos da página home

*** Variables ***
${ABA_CADASTROS}    //*[@id="Cadastros"]
${BOTÃO_NOVO_CADASTRO}    //*[@id="Novo Cadastro"]
${ABA_USUÁRIOS}    //*[@id="Usuários"]

${INPUT_FULLNAME}    //input[@name="fullName"]
${INPUT_EMAIL}    //input[@name="mail"]
${INPUT_ACESSPROFILE}    //input[@name="accessProfile"]
${INPUT_CPF}    //input[@name="cpf"]
${INPUT_PASSWORD}    //input[@name="password"]
${INPUT_CONFIRM_PASSWORD}    //input[@name="confirmPassword"]

${BOTÃO_SALVAR_NOVO_USUÁRIO}    //button[@id="save"]
# mask[id="path-1-inside-1_1126_35789"]

${MSG_NAME_OBRIGATÓRIO}    //p[contains(text(), "O campo nome completo é obrigatório")]
${MSG_EMAIL_OBRIGATÓRIO_USUÁRIOS}    //p[contains(text(), "O campo email é obrigatório")]
${MSG_PA_OBRIGATÓRIO}    //p[contains(text(), "O campo perfil de acesso é obrigatório")]
${MSG_CPF_OBRIGATÓRIO}    //p[contains(text(), "O campo CPF é obrigatório")]

${MSG_SENHA_OBRIGATÓRIO}    //div[contains(text(), "O campo senha é obrigatório")]
${MSG_CONFIRMAR_SENHA_OBRIGATÓRIO}    //div[contains(text(), "O campo de confirmação de senha é obrigatório.")]