*** Settings ***
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot
Variables        test_data.py


*** Keywords ***

Products are loaded and status code is 200
    create session  mysession   ${root_url}
    ${resp} =   Get Request     mysession       ${root_url}/api/productsList
    ${status_code}=     Convert To String         ${resp.status_code}
    Should Be Equal     ${status_code}      200

