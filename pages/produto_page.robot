*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${produto_desc_rosa}    id=ContentSite_lblProductDsName    
${produto_preco_rosa}    css=span[class='precoPor_prod']
${produto_adicionar_carrinho}    id=ContentSite_lbtBuy
${produto_dia_entrega}    xpath=//a[normalize-space()='18']
${produto_hora_entrega}    css=.jPeriodRadio[idperiod='1']
${produto_confirma_entrega}    id=btConfirmShippingData

*** Keywords ***
E clico no botao adicionar carrinho
    Element Text Should Be    ${produto_desc_rosa}    BUQUÊ FASCÍNIO DE ROSAS COLOMBIANAS VERMELHAS
    Element Text Should Be    ${produto_preco_rosa}    R$ 291,47
    Click Element    ${produto_adicionar_carrinho}
    Click Element    ${produto_dia_entrega}
    Click Element    ${produto_hora_entrega}
    Wait Until Element Is Visible    ${produto_confirma_entrega}
    Click Element    ${produto_confirma_entrega}