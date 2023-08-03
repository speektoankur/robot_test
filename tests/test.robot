*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.example.com
${SEARCH_TEXT}    Robot Framework

*** Test Cases ***
Sample Selenium Test
    Open Browser to Landing Page
    Input Search Text
    Click Search Button
    Verify Search Results
    Close Browser

*** Keywords ***
Open Browser to Landing Page
    Open Browser    ${URL}    ${BROWSER}

Input Search Text
    Input Text      name=searchbox    ${SEARCH_TEXT}

Click Search Button
    Click Element   name=searchButton

Verify Search Results
    Wait Until Page Contains    ${SEARCH_TEXT}
    Page Should Contain    Search Results for: ${SEARCH_TEXT}

Close Browser
    Close All Browsers
