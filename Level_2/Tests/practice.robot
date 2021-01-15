*** Settings ***
Library    SeleniumLibrary
Library    ../Library/MycustomLibrary.py
Documentation    This is Robot Framework Level 2 Course Practice robot script 


# robot -d Results Tests\practice.robot

*** Variables ***
${URL}    https://robotframework.org/
${Browser}    chrome


*** Test Cases ***
Verify robot framework website works
    [Tags]   Smoke
    Close browser if conditions are met    # Here this keyword calls the Open URL and verify page opens keyword and verifies. 

Verify My Custom Library works
    [Tags]
    ${Response}    String Join    Hello    World
    Log    ${Response}
    
*** Keywords ***
Open URL and verify page opens
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${Header}    Get Text    css=#scroller > div > section > div > h1
    Should Be Equal As Strings    ROBOT FRAME WORK/    ${Header}
    [Return]    Verified!

Close browser if conditions are met    # Example of utilizing return values of a particular keyword in test script 
    ${Returned_info}    Open URL and verify page opens
    Should Be Equal As Strings    ${Returned_info}    Verified!
    Close Browser