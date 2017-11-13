*** Settings ***
Documentation    This is Amazon project to divide
Library  Selenium2Library


*** Test Cases ***
Order a Product from Amazon
    [Tags]    smoke

    #Launch a Browser
    Open Browser    https://www.amazon.in/  ff
    #Maximize Browser Window
    #sleep  2s
    Wait Until Page Contains  Online Shopping: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in

    #Search for a product
    Input Text  id=twotabsearchtextbox   pampers large size
    Click Button    xpath=//*[@id='nav-search']/form/div[2]/div/input

    Wait Until Page Contains    results for "pampers large size"

#Select a product
    Click Element   xpath=//*[@id='pdagDesktopSparkleAsinsContainer']/div[1]/div/a/div[1]/div
    Wait Until Page Contains  Back to search results
#add to cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

#Proceed with checkin
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain     Login


#Closing the Browser
    Close Browser
*** Keywords ***

