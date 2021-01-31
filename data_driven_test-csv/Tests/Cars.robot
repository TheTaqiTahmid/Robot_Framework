*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/DataManager.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/Cars.robot

*** Variables ***

*** Test Cases ***
Should see correct error messages with invalid logins
    ${Invalid_Credentials}    Get CSV data    ${User_Credential}
    # Log Many    ${Invalid_Credentials}
    CarsApp.Login With Many Invalid Credentials    ${Invalid_Credentials}

