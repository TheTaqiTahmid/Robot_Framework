*** Settings ***
Documentation  This is my end to end suite
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Resource  ../../Data/Input_Data.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/EndtoEnd/EndtoEnd.robot

*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page

