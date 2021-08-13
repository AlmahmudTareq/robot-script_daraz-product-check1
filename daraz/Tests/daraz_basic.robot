*** Settings ***
Documentation  This is a basic test on daraz.com.bd. Everything is done inside a single file.
Library  SeleniumLibrary


*** Variables ***
# No variables needed in this simple project

*** Test Cases ***

User can check a product without signing in
    [Documentation]  Anyone can check a product without creating any daraz account. A person can search a product, check the details, and see the prices.
    [Tags]  Smoke
    Open Browser  http://www.daraz.com.bd  chrome
    Maximize Browser Window
    #Sleep  2s
    Input Text  id=q  Router
    Click Button  xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
    #Sleep  2s
    Wait Until Page Contains  items found for "Router"
    Execute JavaScript    window.scrollTo(0,600)
    Sleep  1s
    Click link  xpath=//*[@id="root"]/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[2]/div[2]/a
    Sleep  1s
    Click Element  //*[contains(text(),'Buy Now')]
    Sleep  1s
    Close Browser

*** Keywords ***
# No keywords needed in this simple project