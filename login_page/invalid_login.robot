*** Variables ***
${VALID USERNAME}    demo
${VALID PASSWORD}    mode
*** Settings ***
Library            SeleniumLibrary
Resource           ${CURDIR}${/}login_resource.robot
Test Template      Login With Invalid Credentials
Suite Setup        Open Browser To Login Page
Suite Teardown     Close Browser
*** Test Cases ***                USERNAME           PASSWORD
Empty Username                    ${EMPTY}	        ${VALID PASSWORD}
Empty Password                    ${VALID USERNAME}  ${EMPTY}
Empty Username And Password       ${EMPTY}           ${EMPTY}
Invalid Username                  invalid            ${VALID PASSWORD}
Invalid Password                  ${VALID USERNAME}  invalid
Invalid Username And Password     invalid            invalid
*** Keywords ***
Login With Invalid Credentials
    [Arguments]    ${username}    ${password}
    Login With Credentials    ${username}    ${password}
    Page Error Login Should Display
Page Error Login Should Display
    Title Should Be            Error Page
    Page Should Contain        Login failed. Invalid user name and/or password.