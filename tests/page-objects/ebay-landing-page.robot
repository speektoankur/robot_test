*** Settings ***
Library  Selenium2Library

*** Variables ***

${ShopByCategory}  xpath://*[@id="gh-shop-a"]
${CellPhones}   xpath://a[text()='Cell phones & accessories']
${SelectCategory}  id:gh-cat
${SearchButton}  id:gh-btn
${SearchTextField}  id:gh-ac

*** Keywords ***
Click on ShopByCategory
    Click Element  ${ShopByCategory}

Click on CellPhones
    Click Element  ${CellPhones}

Type ${TextToSearch} in Search box
    Input Text    ${SearchTextField}  ${TextToSearch}

Select ${OptionValue} from Category Drop Down And Search
    Select From List By Value   ${SelectCategory}   ${OptionValue}
    Click Element    ${SearchButton}

