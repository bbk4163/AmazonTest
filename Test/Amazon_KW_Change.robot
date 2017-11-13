*** Settings ***
Documentation    This is Amazon project Using KeyWord Style Approach

Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonKW.robot

Suite Setup  Apply for all Testcases
Test Setup  Common.Launch a Browser
Test Teardown  Common.Closing the Browser
Suite Teardown  Global Teardown

*** variables ***
${BROWSER} =    ff
${URL} =    https://www.amazon.in
${SEARCH_STRING} =  pampers large size


*** Test Cases ***
Open Amazon for Search
    [Tags]    smoke

    #Common.Launch a Browser
    Open Amazon to search

Ordering a Product
    [Tags]    smoke
    #Common.Launch a Browser
    Open Amazon to search
    Search for a product
    Select a product
    add to cart
    proceed with checkin
    #Common.Closing the Browser

