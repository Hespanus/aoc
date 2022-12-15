*** Settings ***
Library    Browser
Library    OperatingSystem
Library    as_list.py
Library    day1.py
Resource    aoc.resource
*** Variables ***
${DAY}



*** Tasks ***
Aoc Day
    ${input_data}=    Get Input Data    ${DAY}
    Day One Part Two   ${input_data}    


*** Keywords ***
Day One    [Arguments]    ${input_data}
    
    ${elves_list}=    List From String    ${input_data}
    
    ${biggest}=    Day1    ${elves_list}
    Log To Console    ${biggest}

Day One Part Two    [Arguments]    ${input_data}

    ${elves_list}=    List From String    ${input_data}
    
    ${sum_biggest}=    Day1_two    ${elves_list}

    Log To Console    ${sum_biggest}

    
    
    

