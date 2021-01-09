*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LANDING_NAVIGATION_ELEMENT}    id=mainNav

*** Keywords ***
Navigate to
    Go to    ${URL}

Verify that page loaded
    Wait Until Page Contains Element    ${LANDING_NAVIGATION_ELEMENT}

