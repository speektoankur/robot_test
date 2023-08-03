*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Variables ***
${SamsungDevicesTab}  xpath://div[@class='b-visualnav__title' and text()='Samsung']
${FactoryUnlocked}  xpath://a/p[text()='Factory Unlocked']
${ScreenSizeDropDown}  xpath://button/span[text()='Screen Size']
${ScreenSizeSixInchOrMore}  xpath://span[text()='6 in or More']/ancestor::li[@class='brm__aspect-item']
${FilterButton}  xpath://button/span[contains(text(),"filters applied")]
${Filters}   xpath://button[@aria-pressed="true"]/span

*** Keywords ***
Navigate and click on Samsung Devices
    Scroll Element Into View  ${SamsungDevicesTab}
    Wait Until Element Is Visible    ${SamsungDevicesTab}
    Click Element   ${SamsungDevicesTab}

Click on Factory Unlocked Status
    Scroll Element Into View    ${FactoryUnlocked}
    Click Element    ${FactoryUnlocked}

Select ScreenSize Six Inches
    Click Element    ${ScreenSizeDropDown}
    Wait Until Page Contains Element    ${ScreenSizeSixInchOrMore}
    Click Element    ${ScreenSizeSixInchOrMore}

Get list of Filters Applied
    Wait Until Element Is Visible    ${FilterButton}
    Click Element    ${FilterButton}
    Sleep  2s
    ${AppliedFilters}=  Get Webelements  ${Filters}
    @{ResultList}=  Create List
    FOR  ${filter}  IN  @{AppliedFilters}
       Append To List      ${ResultList}  ${filter.text}
    END
    Log To Console    "Data IN"
    Log To Console    ${ResultList}
    Log To Console    "Data Out"
    RETURN  ${ResultList}