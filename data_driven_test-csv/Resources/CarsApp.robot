*** Settings ***
Resource  ../Resources/PO/SignIn.robot
Resource    ./Common.robot

*** Keywords ***
Login With Many Invalid Credentials
    [Arguments]    ${Invalid_Credentials}
    FOR    ${elements}    IN    @{Invalid_Credentials}
        Run Keyword And Continue On Failure     Begin Web Test
        Run Keyword And Continue On Failure     SignIn.Navigate To
        Run Keyword And Continue On Failure     Attempt Login    ${elements}
        Run Keyword And Continue On Failure     Verify Login Page Error Message    ${elements}
    END

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