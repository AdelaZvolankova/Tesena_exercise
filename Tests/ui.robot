*** Settings ***
Resource         ../keywords/keywords.ui.robot
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot

Test Setup        I open Browser
Test Teardown     Close All Browsers


*** Test Cases ***

TC_01 User is navigated to Homepage
    [Tags]
    I navigate to eshop
    I see header
    I see footer
    I see subscription

TC_02 User can see cart
    [Tags]
    I navigate to eshop
    I open cart
    I verify cart is present

TC_03 User can see products
    [Tags]
    I navigate to eshop
    I open products
    I verify products are present

TC_04 User can create an account
    [Tags]
    I navigate to eshop
    I navigate to signup/login page
    I signup new user
    I fill in user data
    I finish new user profile
    I verify user profile was created
    I delete user profile
    I verify user profile was deleted

