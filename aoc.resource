*** Settings ***
Library    Browser
Library    OperatingSystem
Resource    credentials.resource


*** Keywords ***
Get Input Data    [Arguments]    ${DAY}
    New Browser    firefox    headless=False
    New Page    https://adventofcode.com/
    Click    "[Log In]" 
    Click    "[Google]"   
    Fill Text    //input[@type="email"]    ${username}
    Click    "Seuraava"
    Fill Text    //input[@type="password"]    ${password}
    Click    "Seuraava"
    Click    //span[text()=" ${DAY}"]
    Click    a >> text="get your puzzle input"
    Switch Page    NEW
    Wait For Elements State    //body/pre   enabled
    ${task_data}=    Get Text    //body/pre 
    Log    ${task_data}
    Return From Keyword    ${task_data}
    

