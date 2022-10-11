*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${browser}  chrome

*** Keywords ***
Opening my browser
    open browser  ${url}  ${browser}
    maximize browser window

Closing my browsers
    close all browsers

Loging into page
    go to  ${url}

Inputing username
    [Arguments]   ${username}
    INPUT TEXT    id:Email   ${username}

Inputing password
    [Arguments]   ${password}
    INPUT TEXT    id:Password   ${password}

Inputing validusername
    [Arguments]   ${validusername}
    INPUT TEXT    id:Email   ${validusername}

Inputing validpassword
    [Arguments]   ${validpassword}
    INPUT TEXT    id:Password   ${validpassword}
Click Login Button
    click element       xpath://button[normalize-space()= 'Log in']

Click log out button
    click link  Logout

Error message should be visible
    page should contain   Login was unsuccessful.

Dashbord page should be visible
    page should contain  Dashboard




