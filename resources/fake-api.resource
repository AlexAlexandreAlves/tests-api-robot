*** Settings ***
Library     Collections
Library     RequestsLibrary
Library     OperatingSystem


*** Variables ***
${BASE_URL}    https://fakerestapi.azurewebsites.net/
${data}    ../data/data.json       
${body}

*** Keywords ***
Start Session
    Create Session    secao-iniciada    url=${BASE_URL}    verify=true

Verify Session
    ${response}    GET On Session   secao-iniciada
    ...    url=${BASE_URL}
    ...    expected_status=200

Get string data and transform to json file
    ${string_file}    Get File    ${data}
    Log    ${string_file}
    ${json_file}    Evaluate    [json.loads($string_file)]
    Log    ${json_file}
    RETURN    ${json_file}

GET Request test
    ${response}    GET On Session    secao-iniciada
    ...    url=${BASE_URL}/api/v1/Activities
    ...    expected_status=200

GET Request by id test    
    ${response}    GET On Session    secao-iniciada
    ...    url=${BASE_URL}/api/v1/Activities/1
    ...    expected_status=200


POST Request test
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}    POST On Session    secao-iniciada    
    ...    url=${BASE_URL}/api/v1/Activities
    ...    data=${body}
    ...    headers=${headers}   
    ...    expected_status=200
