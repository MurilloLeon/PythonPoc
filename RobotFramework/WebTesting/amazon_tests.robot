*** Settings ***
Documentation    Essa suit testa o site da amazon
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu Eletronicos
    [Documentation]  Esse  teste veficia o titulo e texto apresentado na amazon
    ...              e verifica as categorias
    [Tags]           menus
    Acessar a Homepage de Amazon
    Entrar no menu "Eletronicos"
    Verificar se apresenta o texto "Eletrônicos e Tecnologia"
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se apresenta as categorias "Computadores e Informática"


# Caso de teste 02 - Pesquisa de Produto
#     [Documentation]  Esse teste verifica a busca de produto no site da amazon
#     [Tags]           busca_produtos  lista_busca
#     Acessar a Homepage de Amazon
#     Digitar o produto "Playstation 5" no campo de Pesquisa
#     Clicar no botão Pesquisa
#     Verificar se o produto pesquisado esta sendo listado