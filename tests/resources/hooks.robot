*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Abrir Sessão
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    # Desativa pop-ups de salvamento e alertas de vazamento de senha do Chrome
    Call Method    ${options}    add_argument    --disable-save-password-bubble
    ${prefs}=    Create Dictionary    profile.password_manager_leak_detection=false
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}

    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
    Set Selenium Implicit Wait    5 seconds


Fechar Sessão
    Run Keyword If Test Failed    Capture Page Screenshot
    Close Browser