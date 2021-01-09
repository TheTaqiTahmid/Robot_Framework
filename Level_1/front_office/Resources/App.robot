*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Landing.robot

*** Keywords ***
Go to Landing Page
    Landing.Navigate to
    Landing.Verify that page loaded
      
Go to "TEAM" Page
    TopNav.Select "TEAM" page
    Team.Verify Page loaded

Validate "TEAM" Page
    Team.Validate Page Contents