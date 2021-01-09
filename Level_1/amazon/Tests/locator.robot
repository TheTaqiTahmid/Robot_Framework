*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${Dir}    ..\

*** Test Cases ***
Should be able to search for product
    List Directory    ${Dir}    
    Open Browser  http://www.amazon.com  chrome
    sleep  2s 
    Input Text  id=twotabsearchtextbox  Ferrari 458
    #Click Button  css=#nav-search-submit-text > input                  # Here we have used CSS locator
    Click Button  xpath=//*[@id="nav-search-submit-text"]/input         # Here we have used xpath locator
    Click Image  Ferrari 458 Italia Red 1/24 by Bburago 26003
    Close Browser


