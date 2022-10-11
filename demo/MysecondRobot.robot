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
    Enter Username
    Enter Password
    Click Login Button
    maximize browser window
    Logout from application
    sleep         5


*** Keywords ***
Enter Username
    INPUT TEXT    name= username    admin

Enter Password
    INPUT PASSWORD   name = password    admin123

Click Login Button
    click button      //button[@type ='submit']
Verift Dashbord for User
    ${url}  Get Location
    Log To Console  ${url}
    Should contain  ${url}   viewEmployeeList

Logout from application
    click element     //li/span/p
    sleep         5
    click link    //a[text()='Logout']


