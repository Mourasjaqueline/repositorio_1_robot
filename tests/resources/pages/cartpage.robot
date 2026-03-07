*** Settings ***
Documentation    Ações e elementos da página do carrinho (Your Cart)
Library          SeleniumLibrary

*** Variables ***
${CART_TITLE}        css=.title
${BTN_CHECKOUT}      css=[data-test="checkout"]
${BTN_CONTINUE}      css=[data-test="continue-shopping"]
${ITEM_LIST}         css=.cart_item

*** Keywords ***
# --- Keywords em BDD ---


Então devo visualizar o meu carrinho
    Wait Until Element Is Visible    ${CART_TITLE}
    Element Text Should Be           ${CART_TITLE}    Your Cart
    Location Should Contain          cart.html
    

Quando inicio o checkout
    Wait Until Element Is Visible    ${BTN_CHECKOUT}
    Click Button                     ${BTN_CHECKOUT}

# --- Keywords Simples (Para compatibilidade com sua Imagem 10) ---

Validar Página do Carrinho
    Então devo visualizar o meu carrinho
    

Ir para Checkout
    Quando inicio o checkout

Remover todos os itens do carrinho
    ${buttons}    Get WebElements    xpath=//button[text()="Remove"]
    FOR    ${button}    IN    @{buttons}
        Click Element    ${button}
    END

Quando removo mais um produto de dentro do carrinho
    # Remove o primeiro item que encontrar no carrinho
    Click Button    xpath=(//button[contains(text(),'Remove')])[1]