*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests\list_and_dictionary.robot

*** Variables ***
@{List of names}    Taqi    Saimul    Affani
&{URL}    google=http://www.google.com    robot_tutorial=http://www.robotframeworktutorial.com/    amazon=http://www.amazon.com

*** Test Cases ***
Log Listed Items    # Unpacking items in list to specific scaler variable 
    ${name 1}    ${name 2}    ${name 3}    Set Variable    @{List of names}
    Log Many    ${name 1}    ${name 2}    ${name 3}

Iterate Through Dictionary 
    FOR     ${key}    ${value}     IN     &{URL}
        Open Browser    about:blank    chrome
        Maximize Browser Window
        Go To    ${URL.${key}}
        Sleep    2s
        Close Browser
    END


