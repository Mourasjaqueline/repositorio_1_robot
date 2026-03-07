*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TITLE_PRODUCTS}     css=.title
${BTN_BACKPACK}       css=[data-test="add-to-cart-sauce-labs-backpack"]
${BTN_BIKE_LIGHT}     css=[data-test="add-to-cart-sauce-labs-bike-light"]
${BTN_BOLT_TSHIRT}    css=[data-test="add-to-cart-sauce-labs-bolt-t-shirt"]
${BTN_CART}           css=.shopping_cart_link
${BADGE_CART}         css=.shopping_cart_badge

*** Keywords ***

Então sou redirecionado para a vitrine de produtos
    Wait Until Element Is Visible    ${TITLE_PRODUCTS}
    Element Text Should Be           ${TITLE_PRODUCTS}    Products
    Location Should Contain          inventory.html


Quando adiciono os itens iniciais ao carrinho
    Wait Until Element Is Visible    ${BTN_BACKPACK}
    Click Button    ${BTN_BACKPACK}
    Click Button    ${BTN_BIKE_LIGHT}
    Click Button    ${BTN_BOLT_TSHIRT}


Quando removo um item ainda na vitrine
    Click Button    css=[data-test="remove-sauce-labs-backpack"]

Quando vou para o carrinho
    Wait Until Element Is Visible    ${BTN_CART}
    Click Element                    ${BTN_CART}
    Wait Until Location Contains     cart.html

Então o ícone do carrinho deve exibir "${quantidade}" itens
    Wait Until Element Is Visible    ${BADGE_CART}
    Element Text Should Be           ${BADGE_CART}    ${quantidade}