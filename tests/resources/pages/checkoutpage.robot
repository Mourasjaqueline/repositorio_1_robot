*** Settings ***
Documentation    Ações e elementos da página de checkout (Informações, Revisão e Sucesso)
Library          SeleniumLibrary

*** Variables ***
# Elementos da etapa de informações (Step One)
${CHKT_FIRST_NAME}     css=[data-test="firstName"]
${CHKT_LAST_NAME}      css=[data-test="lastName"]
${CHKT_POSTAL_CODE}    css=[data-test="postalCode"]
${CHKT_BTN_CONTINUE}   css=[data-test="continue"]

# Elementos da etapa de revisão (Step Two)
${CHKT_BTN_FINISH}     css=[data-test="finish"]

# Elementos da página de sucesso
${CHKT_MSG_SUCCESS}    css=[data-test="complete-header"]
${CHKT_BTN_BACK}       css=[data-test="back-to-products"]

*** Keywords ***
# --- Keywords em BDD ---

Quando preencho as informações de checkout "${first_name}" "${last_name}" "${postal_code}"
    Wait Until Element Is Visible    ${CHKT_FIRST_NAME}
    Input Text      ${CHKT_FIRST_NAME}     ${first_name}
    Input Text      ${CHKT_LAST_NAME}      ${last_name}
    Input Text      ${CHKT_POSTAL_CODE}    ${postal_code}
    Click Button    ${CHKT_BTN_CONTINUE}

E finalizo o pedido
    Wait Until Element Is Visible    ${CHKT_BTN_FINISH}
    Click Button                     ${CHKT_BTN_FINISH}

    

Então a compra deve ser confirmada com sucesso
    Wait Until Element Is Visible    ${CHKT_MSG_SUCCESS}
    Element Text Should Be           ${CHKT_MSG_SUCCESS}    Thank you for your order!



Quando retorno para a home
    Wait Until Element Is Visible    ${CHKT_BTN_BACK}
    Click Button                     ${CHKT_BTN_BACK}
# --- Keywords Técnicas (Match exato com seu teste na Imagem 10) ---

Preencher Informações de Checkout
    [Arguments]    ${first}    ${last}    ${zip}
    Quando preencho as informações de checkout "${first}" "${last}" "${zip}"

Finalizar Pedido
    E finalizo o pedido
     

Validar Sucesso do Pedido
    Então a compra deve ser confirmada com sucesso

Retornar para Home
    Quando retorno para a home

Então devo visualizar a tela de informações de checkout
    Element Text Should Be    css=.title    Checkout: Your Information

Então devo visualizar a tela de visão geral do pedido
    Element Text Should Be    css=.title    Checkout: Overview