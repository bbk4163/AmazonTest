*** Settings ***
Documentation    Suite description
Library  Selenium2Library


*** Keywords ***
Launch a Browser
    Open Browser    about:blank  ${BROWSER}
    #Maximize Browser Window
    #sleep  2s

Closing the Browser
    Close Browser

Apply for all Testcases

    log  this is Global Suite start up

Global Teardown

    log  this is Global Suite Teardown