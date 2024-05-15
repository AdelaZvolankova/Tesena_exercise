*** Settings ***
Resource         ../keywords/keywords.ui.robot
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot
Variables        test_data.py


*** Keywords ***
I open browser
    Open Browser    ${root_url}      browser=chrome
    Maximize Browser Window

I navigate to eshop
    Go to        ${root_url}
    Agree with personal data usage

Agree with personal data usage
    Wait until page contains element     ${consent}
    Click element                        ${consent}

I see header
    Wait until page contains element       ${header}
    
I see footer
    Wait until page contains element       ${footer}
    Element Should Contain    ${footer}    Copyright © 2021 All rights reserved

I see subscription
    Wait until page contains element       ${subscription}
    Element Should Contain    ${subscription}    SUBSCRIPTION

I open cart
    Wait Until Element Is Visible         ${cart}
    Click Element                         ${cart}
    Check advertisment                    view_cart

I verify cart is present
    Wait until page contains element      ${cart_header}
    Capture Page Screenshot

I open products
    Wait Until Element Is Visible         ${products}
    Click Element                         ${products}
    Check advertisment                    products

I verify products are present
    Wait Until Page Contains Element      ${products_header}
    Wait Until Page Contains Element      ${category_headline}
    Wait Until Page Contains Element      ${brands_headline}
    Capture Page Screenshot

Check advertisment
    [Arguments]     ${current_url}
    ${status}   Run Keyword And Return Status      Location Should Contain    google_vignette
    IF   ${status} == ${True}
        Go to       ${root_url}/${current_url}
    END

I navigate to signup/login page
    Wait Until Element Is Visible         ${login}
    Click Element                         ${login}
    Check advertisment                    login

I signup new user
    Wait Until Element Is Visible         ${signup_name}
    Input Text                            ${signup_name}     ${test_signup_name}
    Wait Until Element Is Visible         ${signup_email}
    Input Text                            ${signup_email}    ${test_signup_email}
    Wait Until Element Is Visible         ${signup_button}
    Click Button                          ${signup_button}
    Capture Page Screenshot

I fill in user data
    Wait Until Element Is Visible         ${password}
    Input Text                            ${password}             ${test_password}
    Wait Until Element Is Visible         ${input_first_name}
    Input Text                            ${input_first_name}     ${first_name}
    Wait Until Element Is Visible         ${input_first_name}
    Input Text                            ${input_last_name}      ${last_name}
    Wait Until Element Is Visible         ${input_address1}
    Input Text                            ${input_address1}       ${address1}
    Scroll Element Into View              ${create_button}
    Wait Until Element Is Visible         ${input_country}
    Click Element                         ${input_country}
    Wait Until Element Is Visible         ${country_option}
    Click Element                         ${country_option}
    Wait Until Element Is Visible         ${input_state}
    Wait Until Element Is Visible         ${input_state}
    Input Text                            ${input_state}            ${state}
    Wait Until Element Is Visible         ${input_city}
    Input Text                            ${input_city}             ${city}
    Wait Until Element Is Visible         ${input_zipcode}
    Input Text                            ${input_zipcode}          ${zipcode}
    Wait Until Element Is Visible         ${input_mobile_number}
    Input Text                            ${input_mobile_number}    ${mobile_number}
    Capture Page Screenshot

I finish new user profile
    Wait Until Element Is Visible         ${create_button}
    Click button                          ${create_button}

I verify user profile was created
    Wait Until Element Is Visible         ${account_created_success_msg}
    Capture Page Screenshot
    Wait Until Element Is Visible         ${continue_button}
    Click Link                            ${continue_button}

I delete user profile
    Check advertisment                    account_created
    Wait Until Element Is Visible         ${continue_button}
    Click Link                            ${continue_button}
    Wait Until Element Is Visible         ${delete_account}
    Click Element                         ${delete_account}

I verify user profile was deleted
    Wait Until Element Is Visible         ${account_deleted_success_msg}
    Capture Page Screenshot
    Wait Until Element Is Visible         ${continue_button}
    Click Element                         ${continue_button}
