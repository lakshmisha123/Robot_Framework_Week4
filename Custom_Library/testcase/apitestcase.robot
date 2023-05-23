*** Settings ***
Resource    ../Keyword/ApiKey.robot

Suite Setup    Launching Url And Browser
Suite Teardown    Close Browser


*** Test Cases ***
TC6 : Verfying If User Able To Navigate To The Particular Website .
    
    [Documentation]    Navigating To The Particular Website And Fetching Bids Value .
    [Tags]    CoinSwitch
    [Setup]    Log To Console    ${StartMessage}
    
    Given Click On Trade Button And Dismissing PopUp's Present In The Home Page
    And Fetching And Storing The Particular Value From Bids, Finally Comaparing With Response

    [Teardown]    Log To Console    ${EndMessage}