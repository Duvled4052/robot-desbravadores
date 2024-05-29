*** Settings ***
Documentation    Esse arquivo contém as variáveis de configuração do sistema - vão ser puxadas pelo main.robot
Resource    ../main.robot

*** Variables ***

${URL_LOGIN}    https://automacao.qacoders-academy.com.br/login
${URL_HOME}    https://automacao.qacoders-academy.com.br/home

${NAVEGADOR}    headlesschrome
