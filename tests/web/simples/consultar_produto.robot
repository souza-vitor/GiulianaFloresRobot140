*** Settings ***
Library    SeleniumLibrary

Test Teardown    Close Browser

*** Variables ***
${url}    https://www.giulianaflores.com.br/
${browser}    Edge
${timeout}    5000ms

*** Test Cases ***
Selecionar produto rosa
    Dado que acesso o site
    Quando preencho o campo de cep    09060-380
    E preencho o campo de pesquisa    rosa
    E clico no botao pesquisar
    Entao sou redirecionado para a pagina de produtos
    Quando seleciono o produto
    E clico no botao adicionar carrinho
    Entao sou direcionado para o carrinho de compras

Selecionar produto orquidea
    Dado que acesso o site
    Quando preencho o campo de cep    09060-380
    E preencho o campo de pesquisa    orquidea
    E clico no botao pesquisar
    Entao sou redirecionado para a pagina de produtos
    Quando seleciono o produto orquidea
    E clico no botao adicionar carrinho orquidea
    Entao sou direcionado para o carrinho de compras orquidea
    
*** Keywords ***
Dado que acesso o site
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=.cepfilterbox-title    ${timeout}

Quando preencho o campo de cep
    [Arguments]    ${cep}
    Input Text    id=txtFilterZip    ${cep}
    Click Element    id=ibtFilterSearch

E preencho o campo de pesquisa
    [Arguments]    ${produto}
    Wait Until Element Is Visible    id=txtDsKeyWord    ${timeout}
    Input Text    id=txtDsKeyWord    ${produto}

E clico no botao pesquisar
    Click Element    id=btnSearch

Entao sou redirecionado para a pagina de produtos
    Wait Until Element Is Visible    css=.entrega-horas    500ms
Quando seleciono o produto
    Click Element    xpath=//h2[normalize-space()='Buquê Fascínio de Rosas Colombianas Vermelhas']
E clico no botao adicionar carrinho
    Element Text Should Be    id=ContentSite_lblProductDsName    BUQUÊ FASCÍNIO DE ROSAS COLOMBIANAS VERMELHAS
    Element Text Should Be    css=span[class='precoPor_prod']    R$ 291,47
    Click Element    id=ContentSite_lbtBuy
    Click Element    xpath=//a[normalize-space()='18']
    Wait Until Element Is Visible    id=btConfirmShippingData
    Click Element    id=btConfirmShippingData
Entao sou direcionado para o carrinho de compras
    Element Text Should Be    xpath=//a[normalize-space()='Buquê Fascínio de Rosas Colombianas Vermelhas']    Buquê Fascínio de Rosas Colombianas Vermelhas
    Element Text Should Be    css=span[class='precoPor_basket']    R$ 291,46

# passos adicionais para a orquidea
Quando seleciono o produto orquidea
    Click Element    xpath=//h2[normalize-space()='Mini Orquídea Rara Branca']
E clico no botao adicionar carrinho orquidea
    Element Text Should Be    id=ContentSite_lblProductDsName    Mini Orquídea Rara Branca
    Element Text Should Be    css=span[class='precoPor_prod']    R$ 179,91
    Click Element    id=ContentSite_lbtBuy
    Click Element    xpath=//a[normalize-space()='18']
    Wait Until Element Is Visible    id=btConfirmShippingData
    Click Element    id=btConfirmShippingData
Entao sou direcionado para o carrinho de compras orquidea
    Element Text Should Be    xpath=//a[normalize-space()='Mini Orquídea Rara Branca']    Mini Orquídea Rara Branca
    Element Text Should Be    css=span[class='precoPor_basket']    R$ 179,91