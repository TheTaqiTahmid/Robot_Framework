*** Settings ***
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/Common.robot
*** Keywords ***
Test Multiple Login Scenarios 
    [Arguments]  ${Credentials}
    Begin Web Test
    Navigate to Sign In Page
    Attempt Login    ${Credentials}
    Verify Login Page Error Message    ${Credentials.ExpectedErrorMessage}
    End Web Test

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  1s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}