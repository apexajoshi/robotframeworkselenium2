*** Settings ***
Library    SeleniumLibrary
Test Setup   Open Browser  ${appurl}      ${browser}
Test Teardown   close browser
*** Variables ***
${appurl}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome
*** Test Cases ***


LoginTest with Valid Credentials
    [Tags]  Smoke

    sleep         2
    INPUT TEXT    name= username  admin
    INPUT PASSWORD   name = password            admin123
    click button      //button[@type ='submit']
    maximize browser window
    ${url}  Get Location
    Log To Console  ${url}
    Should contain  ${url}   viewEmployeeList
    sleep         2


LoginTest with invalid Credentials
    [Tags]  Regression

    sleep         2
    INPUT TEXT    name= username  admin
    INPUT PASSWORD   name = password            admin123
    click button      //button[@type ='submit']
    maximize browser window
    ${url}  Get Location
    Log To Console  ${url}
    Should contain  ${url}   viewEmployeeList
    sleep         2




