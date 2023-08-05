*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login to ${URL} using ${BROWSER}
    Open Browser   http://localhost:4444/wd/hub    ${BROWSER}
    Go To   ${URL}