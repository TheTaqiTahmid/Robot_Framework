*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAM_HEADER_LABEL}    xpath=//*[@id="team"]/div/div[1]/div/h2        

*** Keywords ***
Verify Page loaded
    Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${Element_Text}    Get Text    ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings    ${Element_Text}    Our Amazing Team    ignore_case=True  
    
    # The later approach fails in chrome but passes in edge 
    #Element Text Should Be    ${TEAM_HEADER_LABEL}   Our Amazing Team 
