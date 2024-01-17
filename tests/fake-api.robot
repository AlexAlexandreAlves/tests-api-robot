*** Settings ***
Library    RequestsLibrary
Resource   ../resources/fake-api.resource

*** Test Cases ***
CT001:Verifica api online
    [Tags]
    Iniciar Sessão