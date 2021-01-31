*** Settings ***
Documentation    Use this layer to get data from external files
Library    ../customLib/csv_parse.py

*** Keywords ***
Get CSV data
    [Arguments]    ${FilePath}
    ${Data}    Read CSV File    ${FilePath}
    [Return]    ${Data}