*** Settings ***
Library    SeleniumLibrary
Resource   ../variables.robot

*** Variables ***
${INPUT_USERNAME}      css=[data-test="username"]
${INPUT_PASSWORD}      css=[data-test="password"]
${BTN_LOGIN}           css=[data-test="login-button"]
${ERROR_MESSAGE}       css=[data-test="error"]

*** Keywords ***
Dado que acesso a página de login
    Go To    ${URL}

Quando submeto as credenciais "${username}" e "${password}"
    Wait Until Element Is Visible    ${INPUT_USERNAME}
    Input Text      ${INPUT_USERNAME}    ${username}
    Input Text      ${INPUT_PASSWORD}    ${password}
    Click Button    ${BTN_LOGIN}

Então devo ver a mensagem de erro "${mensagem}"
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    Element Text Should Be           ${ERROR_MESSAGE}    ${mensagem}