*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login to ${URL} using ${BROWSER}
    Open Browser   ${URL}    ${BROWSER}    remote-url=http://127.0.0.1:4444/wd/hub