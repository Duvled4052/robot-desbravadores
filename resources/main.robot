*** Settings ***
Documentation    Esse arquivo contém a importação das libraries, keywords, pages e variáveis - todos os arquivos do projeto pegam e jogam informações daqui

# Suite Teardown    Close Browser

Library    SeleniumLibrary
Library    FakerLibrary

Resource    data/credenciais_usuario.robot
Resource    data/variables_config.robot
Resource    data/cadastro_usuário.robot
Resource    data/cadastro_diretoria.robot

Resource    keywords/login_kws.robot
Resource    keywords/users_kws.robot
Resource    keywords/diretoria_kws.robot

Resource    pages/login_page.robot
Resource    pages/users_page.robot
Resource    pages/diretoria_page.robot

Resource    utils/keywords_utils.robot
