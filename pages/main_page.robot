*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${main_cep_campo}        id=txtFilterZip
${main_cep_botao}        id=ibtFilterSearch
${main_pesquisa_campo}    id=txtDsKeyWord
${main_pesquisa_botao}    id=btnSearch

*** Keywords ***
Quando preencho o campo de cep
    [Arguments]    ${cep}
    Input Text    ${main_cep_campo}    ${cep}
    Click Element    ${main_cep_botao}

E preencho o campo de pesquisa
    [Arguments]    ${produto}    ${timeout}
    Wait Until Element Is Visible    ${main_pesquisa_campo}    ${timeout}
    Input Text    ${main_pesquisa_campo}    ${produto}

E clico no botao pesquisar
    Click Element    ${main_pesquisa_botao}
