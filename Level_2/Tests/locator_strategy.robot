*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com
${Browser}    chrome

*** Test Cases ***
Different Locator Strategy
    [Tags]    locator
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Click Link    id=nav-link-accountList  # Example of id attribute selector
    # Click Link    xpath=//*[@id="nav-link-accountList"]  # Example of Xpath locator
    # Click Link    css=#nav-link-accountList    # Example of CSS selector 
    Close Browser

Check simulating mouse hover
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Mouse Over    id=nav-link-accountList
    Sleep    5s
    Click Link    css=#nav-al-your-account > a:nth-child(5)
    Wait Until Page Contains    Browsing history
    Close Browser

Locator should find certain number of elements
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    id=twotabsearchtextbox    watch
    Click Button  id=nav-search-submit-button
    Page Should Contain Element    xpath=//div[contains(@data-component-type, 'search-result')]     limit=60
    Close Browser

Locator should record number of elements found from a search    
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    id=twotabsearchtextbox    watch
    Click Button  id=nav-search-submit-button
    ${Number of search results}    Get Element Count    xpath=//div[contains(@data-component-type, 'search-result')]
    Log    ${Number of search results}
    Close Browser