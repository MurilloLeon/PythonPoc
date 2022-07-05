*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICO}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a Homepage de Amazon
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICO} 

Entrar no menu "Eletronicos"
    Click Element    locator=${MENU_ELETRONICO}

Verificar se apresenta o texto "${TEXTO}"
    Wait Until Page Contains    text=${TEXTO}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}
