*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${cart_produto_desc}    xpath=//a[normalize-space()='Buquê Fascínio de Rosas Colombianas Vermelhas']
${cart_produto_preco}    css=span[class='precoPor_basket']

*** Keywords ***
Entao sou direcionado para o carrinho de compras
    Element Text Should Be    ${cart_produto_desc}    Buquê Fascínio de Rosas Colombianas Vermelhas
    Element Text Should Be    ${cart_produto_preco}    R$ 291,46