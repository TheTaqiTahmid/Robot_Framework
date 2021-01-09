*** Settings ***
Documentation    This test suite is for testing "http://www.robotframeworktutorial.com/front-office/" website
Resource    ../Resources/App.robot
Resource    ../Resources/Common.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


# robot -d Results Tests\Front_office.robot
Library    OperatingSystem

*** Variables ***
${BROWSER}    firefox
${URL}    http://www.robotframeworktutorial.com/front-office/



*** Test Cases ***
User should be able to access TEAM page
    [Documentation]    User should be able to click the TEAM button on the front page
    [Tags]    Smoke
    App.Go to Landing Page
    App.Go to "TEAM" Page
    ${New_dir}    Join Path    parent   example_directory
    Create Directory    ${New_dir}
    Sleep    2s

The TEAM section should include desired headline value
    [Documentation]    The page should contain the desired headline
    [Tags]    Smoke
    App.Go to Landing Page
    App.Go to "TEAM" Page
    App.Validate "TEAM" Page
    Sleep    2s