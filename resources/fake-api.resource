*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     RequestsLibrary


*** Variables ***
${BASE_URL}    https://fakerestapi.azurewebsites.net/
${id}


*** Keywords ***
Iniciar Sessão
    Create Session    TESTS-API-ROBOT    url=${BASE_URL}    verify=true