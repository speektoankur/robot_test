
*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  page-objects/ebay-landing-page.robot
Resource  page-objects/smart-phones-page.robot
Resource    page-objects/laptop-search-page.robot
Resource  test-utils/test-base.robot
Suite Setup  Run Keywords
Suite Teardown  Run Keywords    Close Browser

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.ebay.com/
@{expectedfilters}       3 filters applied   Brand   Lock Status   Screen Size

*** Test Cases ***
Access a Product via category after applying multiple filters
    [Tags]    test:retry(2)
    Login To ${URL} Using ${BROWSER}
    Maximize Browser Window
    Click on ShopByCategory
    Click On CellPhones
    Navigate And Click On Samsung Devices
    Click On Factory Unlocked Status
    Select ScreenSize Six Inches
    ${actualfilters}=  Get list of Filters Applied
    Lists Should Be Equal  ${expectedfilters}  ${actualfilters}
    Close Browser


Access a Product via Search
    [Tags]    test:retry(2)
    Login To ${URL} Using ${BROWSER}
    Type MacBook in Search box
    Select 58058 From Category Drop Down And Search
    Wait Until Element Is Visible    ${FirstResultTitle}
    ${title} =  Get Text    ${FirstResultTitle}
    Should Contain    ${title}   MacBook
    Close Browser