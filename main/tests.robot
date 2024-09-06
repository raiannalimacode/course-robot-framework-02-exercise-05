*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${btn_offers}            //a[contains(text(), "Ofertas")]
${tag_offer}             //span[@class="promotion-item__today-offer-text"]

*** Keywords ***
Abrir navegador e entrar no site do Mercado Livre
    Open Browser    https://www.mercadolivre.com.br/    chrome

Clicar na página de ofertas e validar página
    Click Element                        ${btn_offers}
    Wait Until Element Is Visible        ${tag_offer}
    Element Should Be Visible            ${tag_offer}

Fechar o navegador
    Close Browser

*** Test Cases ***
Entrar no site do Mercado Livre e ir na página de ofertas
    Abrir navegador e entrar no site do Mercado Livre
    Clicar na página de ofertas e validar página
    Fechar o navegador