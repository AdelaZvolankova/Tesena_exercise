*** Settings ***
Resource         ../keywords/keywords.api.robot
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot


*** Test Cases ***


ATC_01 All products are loaded
    [Tags]   api    wip
    Products are loaded and status code is 200