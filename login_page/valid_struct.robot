*** Settings ***
Resource    ${CURDIR}${/}login_resource.robot
Library    SeleniumLibrary    
Suite Teardown    Close Browser
Suite Setup    Open Browser To Login Page
*** Test Cases ***
Title Should Be 'Login Page'
    Title Should Be    Login Page
Have Label For Username Input
    Page Should Contain Element    css:label[for=username_field]
Have Username Input
    Page Should Contain Textfield    username_field
Have Label For Password Input
    Page Should Contain Element    css:label[for=password_field]
Have Password Input
    Page Should Contain Textfield    password_field