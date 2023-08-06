*** Settings ***
Library  Selenium2Library

*** Variables ***
${FirstResultTitle}   xpath://*[@id='srp-river-results']/descendant::div[@class='s-item__title'][1]/span
