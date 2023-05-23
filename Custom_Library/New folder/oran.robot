*** Settings ***
Library    F:/Custom_Library/a.py
Library    Selenium2Library
 
*** Tasks ***
ope

    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Wait For Element And Input Text    //*[@name='username']    Admin
    Wait For Element And Input Text    //*[@name='password']    admin123
    Wait For Element And Click    //*[@type='submit']   


