*** Settings ***
Documentation    Testing if else statement and for loop


Library    String

*** Variables ***
${My Value}    20
@{Things I love}    Dog    Food    Movies    Tv Series    Cars

*** Test Cases ***
Testing a True IF statement
    Run Keyword IF         ${My Value} > 10    Keyword 1

Testing a False IF statement
    Run Keyword IF         ${My Value} > 20    Keyword 1

Testing a IF/Else IF/ELse Statement
    Run Keyword IF         ${My Value} > 20    Keyword 1    ELSE IF    ${My Value} == 20   Keyword 2    ELSE    Keyword 3

Testing For loop
    FOR    ${i}    IN RANGE    100            # robot -d Results -t "Testing For loop" Tests\condition_and_loop.robot
        Log      ${i}
        Exit For Loop If    ${i} == 5
    END
    FOR   ${j}    IN     @{Things I love}
        Log    I love ${j}
        Run Keyword If    '${j}' == 'Tv Series'    Keyword Tv Series
    END

Repeat a Keyword
    Repeat Keyword    2    Keyword 1


*** Keywords ***
Keyword 1
    Log    This is keyword one

Keyword 2
    Log    This is keyword two

Keyword 3
    Log    This is keyword three
    
Keyword Tv Series
    Log    Expecially Friends
