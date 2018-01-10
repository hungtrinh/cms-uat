*** Setting ***
Library    SeleniumLibrary
Resource   ${CURDIR}${/}login_resource.robot
Resource   ${CURDIR}${/}..${/}profile_page/profile_resource.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser
*** Test Cases ***
Valid login
    Given Go To Login Page
    When Type Username    demo
    And Type Password    mode
    And Submit Credentials
    Then Profile Page Should Display