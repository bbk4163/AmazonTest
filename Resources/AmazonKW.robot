*** Settings ***
Documentation    Amazon scripts KeyWords and files are kept here
Library  Selenium2Library

*** Keywords ***
Open Amazon to search
    go to    ${URL}
    Wait Until Page Contains  Online Shopping: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in

Search for a product
    Input Text  id=twotabsearchtextbox   ${SEARCH_STRING}
    Click Button    xpath=//*[@id='nav-search']/form/div[2]/div/input

    Wait Until Page Contains    results for "${SEARCH_STRING}"

Select a product
    Click Element   xpath=//*[@id='pdagDesktopSparkleAsinsContainer']/div[1]/div/a/div[1]/div
    Wait Until Page Contains  Back to search results
add to cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Proceed with checkin
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain     Login


