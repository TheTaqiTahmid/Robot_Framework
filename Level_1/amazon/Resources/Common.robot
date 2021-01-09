*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Do Something
    Log  I am testing

Begin Web Test
    Open Browser  about:blank  ${Browser}
    Maximize Browser Window

End Web Test
    Close Browser

Do something else
    Log  I am testing again