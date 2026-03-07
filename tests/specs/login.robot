*** Settings ***
Library          JSONLibrary
Library          SeleniumLibrary

Resource         ../resources/hooks.robot
Resource         ../resources/variables.robot
Resource         ../resources/pages/loginpage.robot
Resource         ../resources/pages/productspage.robot
Resource         ../resources/pages/cartpage.robot
Resource         ../resources/pages/checkoutpage.robot

Test Setup       Abrir Sessão
Test Teardown    Fechar Sessão

*** Test Cases ***

Cenário: Login com sucesso
    Dado que acesso a página de login
    Quando submeto as credenciais "${STANDARD_USER}" e "${PASSWORD}"
    Então sou redirecionado para a vitrine de produtos

Cenário: Login com usuário bloqueado
    Dado que acesso a página de login
    Quando submeto as credenciais "${LOCKED_USER}" e "${PASSWORD}"
    Então devo ver a mensagem de erro "Epic sadface: Sorry, this user has been locked out."