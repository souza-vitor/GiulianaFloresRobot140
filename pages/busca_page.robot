*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${busca_ancora}    css=.entrega-horas
${busca_produto_rosa}    xpath=//h2[normalize-space()='Buquê Fascínio de Rosas Colombianas Vermelhas']

*** Keywords ***
Entao sou redirecionado para a pagina de produtos
    Wait Until Element Is Visible    ${busca_ancora}    500ms
Quando seleciono o produto
    Click Element    ${busca_produto_rosa}