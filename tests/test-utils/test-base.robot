*** Settings ***
Library  Selenium2Library

*** Variables ***
${REMOTE_URL}  http://localhost:4444/wd/hub

*** Keywords ***
Create Chrome Driver
    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument   --ignore-ssl-errors\=yes
    Call Method    ${chrome_options}    add_argument   --ignore-certificate-errors
    Create Webdriver    Remote   desired_capabilities=${chrome_options.to_capabilities()}    command_executor=${REMOTE_URL}

Login to ${URL} using ${BROWSER}
    Create Chrome Driver
    Go To  ${URL}