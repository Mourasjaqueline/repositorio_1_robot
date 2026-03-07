*** Settings ***
Documentation    Desafio SauceDemo Jornada de Compra
Library          JSONLibrary
Library          SeleniumLibrary

Resource         ../resources/hooks.robot    
Resource         ../resources/pages/loginpage.robot    
Resource         ../resources/pages/productspage.robot    
Resource         ../resources/pages/cartpage.robot
Resource         ../resources/pages/checkoutpage.robot

Test Setup       Abrir Sessão
Test Teardown    Fechar Sessão

*** Test Cases ***
Cenário: Jornada de Compra com Manipulação de Itens
    [Tags]    e2e    regressao

    ${DATA}    Load JSON From File    ${CURDIR}/../resources/data/checkout_data.json

    # Autenticação
    Dado que acesso a página de login
    Quando submeto as credenciais "${STANDARD_USER}" e "${PASSWORD}"
    Então sou redirecionado para a vitrine de produtos

    # Vitrine
    Quando adiciono os itens iniciais ao carrinho
    Então o ícone do carrinho deve exibir "3" itens

    Quando removo um item ainda na vitrine
    Então o ícone do carrinho deve exibir "2" itens

    Quando vou para o carrinho
    Então devo visualizar o meu carrinho

    # Carrinho
    Quando removo mais um produto de dentro do carrinho
    Então o ícone do carrinho deve exibir "1" itens

    # Checkout
    Quando inicio o checkout
    Então devo visualizar a tela de informações de checkout

    Quando preencho as informações de checkout "${DATA['customer']['firstName']}" "${DATA['customer']['lastName']}" "${DATA['customer']['postalCode']}"
    Então devo visualizar a tela de visão geral do pedido

    E finalizo o pedido
    Então a compra deve ser confirmada com sucesso

    # Retorno
    Quando retorno para a home
    Então sou redirecionado para a vitrine de produtos