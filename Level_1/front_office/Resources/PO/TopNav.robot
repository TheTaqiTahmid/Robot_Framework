*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_LINK}    css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a  

*** Keywords ***
Select "TEAM" page
    Click Link    ${TEAM_LINK} 