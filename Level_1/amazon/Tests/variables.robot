*** Settings ***
Library    SeleniumLibrary
Documentation    Variable example

*** Variables ***
${SCALAR_VARIABLE}    item
@{LIST_VARIABLE}    item1    item2    item3

*** Test Cases ***
Variable Practice Test
    [Tags]    Variables
    ${Variables}    Set Variable    variable declared inside test case    # Set up variable in test case. Can only be used within particular test case.
    Log    ${Variables}
    Log    ${SCALAR_VARIABLE}
    Log    ${LIST_VARIABLE}[1]
    FOR    ${name}     IN     @{LIST_VARIABLE}
        Log    ${name}
    END
    Begin Web Test    http://www.google.com    firefox    # We can also use list variable to pass two variables all at once


*** Keywords ***
Begin Web Test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Close Browser
    