*** Setting ***
Library    SeleniumLibrary
Resource    ${CURDIR}${/}..${/}cms_resource.robot
*** Keyword ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Go To Login Page
    Type Username    ${username}
    Type Password    ${password}
    Submit Credentials
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Login Page Should Display
Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Display
Login Page Should Display
    Title Should Be    Login Page
Type Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}
Type Password
    [Arguments]    ${password}
    Input Password    password_field    ${password}
Submit Credentials
    Click Button    login_button