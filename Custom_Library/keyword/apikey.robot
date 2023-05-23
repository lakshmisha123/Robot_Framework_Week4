*** Settings ***

Library    SeleniumLibrary
Library    F:/Custom_Library/library/apilibrary.py
Resource    ../variable/apivariable.robot


*** Keywords ***
Launching Url And Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click On Trade Button And Dismissing PopUp's Present In The Home Page 
    Wait For Element And Click    ${TradeNow_Button}    ${PopUp_ClickOn_SkipAll}    ${Done}

Fetching And Storing The Particular Value From Bids, Finally Comaparing With Response
    Wait For Element Scroll To View And Clickon Element    ${OrderBook}
    ${GetValues}    Wait For Element Scroll To View And Get Text    ${Limit_Price}
    Log To Console    ${GetValues}

    ${request}    Request    ${url1}    ${GetValues} 
    Log To Console    ${request}
    Should Be Equal    ${GetValues}    ${request}
    Log To Console    Values Are Matched :\t Asks Matched Values Are :\t ${request}\t ${GetValues}

