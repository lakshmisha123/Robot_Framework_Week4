*** Settings ***
Documentation    Custom Library
Resource    ../keyword/keyword.robot
Suite Setup    Open My Browser And Maximize
Suite Teardown    Close Browser

*** Test Cases ***
Study On Custom Library
    [Documentation]    Custom Library Analysis
    [Tags]    test1
    [Setup]    Log To Console    Start
    Given Inputting Item Required Into SearchBar
    When Selecting Products
    Then Getting Into Cart Section For Comparing Values
    [Teardown]    Log To Console    Exit