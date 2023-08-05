*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login to ${URL} using ${BROWSER}
    Open Browser    http://192.168.80.3:4444    ${BROWSER}
    Go To    ${URL}