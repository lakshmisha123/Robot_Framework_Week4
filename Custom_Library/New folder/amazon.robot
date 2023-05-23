*** Settings ***
Library    Selenium2Library
Library    F:/Custom_Library/NEW FOLDER/a.py
Library    String
Variables    a.py
*** Variables ***
${url}    https://www.amazon.in/?ref_=icp_country_from_us
${browser}    chrome
${Search_Bar}    //*[@id='twotabsearchtextbox']
${item1}    iphone 14 pro max
${searchbutton}    //*[@id='nav-search-submit-button']
${a}    (//*[@class='a-size-medium a-color-base a-text-normal'])[1]
#${a_Size}    xpath:(//*[@class='a-button-input'])[2]
${a_addcart}    //*[@id='submit.add-to-cart']
${close}    //*[@id='attach-close_sideSheet-link']
${a2}    (//*[@class='a-size-medium a-color-base a-text-normal'])[2]

${cart}    (//*[@id='nav-cart-count-container'])
${t1}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap sc-product-price a-text-bold'])[1]
${t2}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap sc-product-price a-text-bold'])[2]

${to}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap'])[1]
*** Test Cases ***
o
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # sleep    5
    # #remove string avi    (//*[@data-csa-c-id='r0bwcz-k6czon-18ylb0-18as8f'])
    # ${c}    Remove String Avi    //*[@id='glow-ingress-line1']
    # Log To Console    ${c}


    Wait Until Element Is Visible    ${Search_Bar}
    Input Text    ${Search_Bar}    ${item1}
    
    Click Element    ${searchbutton}
    Wait Until Element Is Visible    ${a}
    Scroll Element Into View    ${a}
    Click Element    ${a}
    ${c}    Get Window Handles
    Switch Window    ${c}[1]
    Wait Until Element Is Visible    ${a_addcart}
    Click Element    ${a_addcart}
    #Sleep    6
    #Wait For Element And Click    ${a_addcart}
    Wait Until Element Is Visible    ${close}
    Click Element    ${close}
    # Wait For Element And Click    ${close}
    Switch Window    ${c}[0]
    Sleep    3
    Wait Until Element Is Visible    ${a2}
    Scroll Element Into View    ${a2}
    Click Element    ${a2}
    ${c}    Get Window Handles
    Switch Window    ${c}[2]
    Wait Until Element Is Visible    ${a_addcart}
    Click Element    ${a_addcart}
    #Wait For Element And Click   ${a_addcart}
    Wait Until Element Is Visible    ${close}
    Click Element    ${close}
    #Wait For Element And Click    ${close}
    #Sleep    5
    Wait Until Element Is Visible    ${cart}
    Click Element    ${cart}
    #Wait For Element And Click    ${cart}

    Wait Until Element Is Visible    ${t1}
    # ${r}    Get Text    ${t1}
    # ${x}    Remove String    ${r}    '    '    ,    ,    .
    # ${k}    Convert To Number    ${x}
    # Log To Console    ${k}
    ${c1}    Remove String Avi    ${t1}
    Log To Console    ${c1}

    Wait Until Element Is Visible    ${t2}
    # ${r1}    Get Text    ${t2}
    # ${x1}    Remove String    ${r1}    '    '    ,    ,    .
    # ${type string}    Evaluate    type($x)
    # Log To Console     ${type string}
    #${k1}    Convert To Number    ${x1}
    ${c}    Remove String Avi    ${t2}
    Log To Console    ${c}
    

    # Log To Console    ${k1}
    
    ${z}    Add Num1    ${c1}    ${c}
    Log To Console    ${z}
    
    #${to1}    Get Text    ${to}
    #Log To Console    ${to1}
    #${x3}    Remove String    ${to1}    '    '    ,    ,    .
    ${c3}    Remove String Avi    ${to}
    Log To Console    ${c3}

    ${y3}    Convert To Number    ${c3}
    Log To Console    ${y3}

    Should Be Equal    ${z}    ${y3}