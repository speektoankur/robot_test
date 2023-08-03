*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login to ${URL} using ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}