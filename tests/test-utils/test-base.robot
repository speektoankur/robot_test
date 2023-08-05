*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login to ${URL} using ${BROWSER}
    Open Browser   ${URL}    ${BROWSER}    remote-url=http://localhost:4444/wd/hub