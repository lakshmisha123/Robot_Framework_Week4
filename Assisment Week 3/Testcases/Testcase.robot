*** Settings ***
Documentation    Amazon Overall Functionality
Resource    ../Resources/Resource.robot
Suite Setup    Open MY Browser And Maximize Window With URL Provided
Suite Teardown    Close Browser
*** Test Cases ***
tc:1
    [Documentation]    Amazon Functionality
    [Tags]    Smoke
    [Setup]    Log To Console    ${Test_Case_1_Started}
    Given Scrolling to Today's Deal Icon and Click on It
    And Select Item Required
    Then Iteration Into Table
    [Teardown]    Log To Console    ${Test_Case_2_Over}
        