*** Settings ***
Library    Selenium2Library
Library    F:/Custom_Library/library/My_First_Library.py
Library    String
Resource       ../variable/variable.robot

*** Keywords ***
Open My Browser And Maximize
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Inputting Item Required Into SearchBar
    Wait For Element And Input Text Click    ${Search_Bar}    ${Item_For_Search}    ${Search_Button_Click}
    
Selecting Products
    Wait For Element Scroll To Element And Clickon Element    ${Product_1}

    ${Tabs}    Get Window Handles
    Switch Window    ${Tabs}[1]

    Wait For Element And Click    ${Product_To_Addcart}
    Wait For Element And Click   ${close}

    Switch Window    ${Tabs}[0]
    
    Wait For Element Scroll To Element And Clickon Element    ${Product_2}   

    ${Tabs}    Get Window Handles
    Switch Window    ${Tabs}[2]

    Wait For Element And Click    ${Product_To_Addcart}
    Wait For Element And Click    ${close}

Getting Into Cart Section For Comparing Values
    Wait For Element Scroll To Element And Clickon Element    ${cart}
    
    ${Product_1_Prize_String_Value_Altered}    Getting Text Of Element And RemovingUnwanted String    ${Product_1_Prize}

    ${Product_2_Prize_String_Value_Altered}    Getting Text Of Element And RemovingUnwanted String    ${Product_2_Prize}
    
    ${Total_Prize_String_Value}    Getting Text Of Element And RemovingUnwanted String    ${Total_Prize}
    
    ${Total_Prize_Numerical_Value}    Convert To Number    ${Total_Prize_String_Value}

    ${z}    Add Num    ${Product_1_Prize_String_Value_Altered}    ${Product_2_Prize_String_Value_Altered}
    Log To Console    ${z}
    Should Be Equal    ${z}    ${Total_Prize_Numerical_Value}
