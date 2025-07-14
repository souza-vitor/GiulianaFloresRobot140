*** Settings ***
Resource    ../../../pages/base_page.robot


*** Test Cases ***
Selecionar rosa
    Tirar Screenshot    1-Home
    Quando preencho o campo de cep    09060-380
    E preencho o campo de pesquisa    rosa    5000ms
    E clico no botao pesquisar
    Entao sou redirecionado para a pagina de produtos
    Tirar Screenshot    2-Produtos
    Quando seleciono o produto
    Tirar Screenshot    3-Detalhes
    E clico no botao adicionar carrinho
    Entao sou direcionado para o carrinho de compras
    Tirar Screenshot    4-Carrinho