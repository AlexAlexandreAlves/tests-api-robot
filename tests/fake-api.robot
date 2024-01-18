*** Settings ***
Library    RequestsLibrary
Resource   ../resources/fake-api.resource

*** Test Cases ***
CT001:Create a session
    [Tags]    create    session
    Start Session
    Get string data and transform to json file

CT002: Verify if session started
    [Tags]    verify    session
    Verify Session

CT003: Request Get Test
    [Tags]    request    get
    GET Request test
CT004: Request by id test
    [Tags]    request    getbyid
    GET Request by id test
CT005: Request post test
    [Tags]    request    post
    POST Request test