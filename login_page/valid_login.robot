*** Setting ***
Library    SeleniumLibrary
Resource   ${CURDIR}${/}login_resource.robot
Resource   ${CURDIR}${/}..${/}profile_page${/}profile_resource.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser
*** Test Cases ***
Valid Login
    Login With Credentials    demo    mode
    Profile Page Should Display