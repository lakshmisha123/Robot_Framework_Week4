*** Settings ***

Resource    ../Resources/Resource.robot
*** Keywords ***
Open MY Browser And Maximize Window With URL Provided
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
Scrolling to Today's Deal Icon and Click on It
    #Scroll Element Into View    ${Todays_Deals}
    #Wait For Element And Click    ${Todays_Deals}
    Scroll And Click    ${Todays_Deals}
    #Wait For Element Scroll To Element And Clickon Element    ${Todays_Deals}

    
Select Item Required
    Wait For Element And Click    ${3ed_Item_In_The_Page}
    #Scroll Element Into View    ${Click}
    #Wait For Element And Click    ${Click}
    Scroll And Click    ${Click}

Iteration Into Table
    ${row_count}    Get Element Count    ${rows}
    Log To Console    ${row_count}
    ${colums_count}    Get Element Count    ${columns}
    Log To Console    ${colums_count}
    FOR    ${row}    IN RANGE    1    ${row_count}    1
        ${text}    Get Text    //*[@class='a-normal a-spacing-micro']//tr[${row}]//td[1]
        IF    '${text}' == '${Expected_1}'
            FOR    ${c}    IN RANGE    1    ${colums_count}+1    1
                ${text2}    Get Text    //*[@class='a-normal a-spacing-micro']//tr[${row}]//td[${c}]
                IF    "${text2}" == "${Expected_2}"
                    Log To Console    ${text2}
                END
                Run Keyword If    "${Expected_2}" == "${text2}"    Exit For Loop
            END
            Run Keyword If    "${Expected_1}" == "${text}"    Exit For Loop
        END
        
    END

Scroll And Click
    [Arguments]    ${a}
    Scroll Element Into View    ${a}
    Wait For Element And Click    ${a}

    