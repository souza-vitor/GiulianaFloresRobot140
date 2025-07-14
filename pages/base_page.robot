*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    main_page.robot
Resource    busca_page.robot
Resource    produto_page.robot
Resource    cart_page.robot

*** Variables ***
${timeout}    5000ms
${url}    https://www.giulianaflores.com.br/
${browser}    Edge
${date}

*** Keywords ***

Abrir navegador
    Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=.cepfilterbox-title    ${timeout}

Fechar navegador
    Sleep    500ms    
    Close Browser

Obter Data e Hora
 # Ler a data e hora do Sistema Operacional
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    
    ...          result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}
Tirar Screenshot    
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    screenshots/giulianaflores/${date}/${TEST_NAME}/${screenshot_name}.jpg
