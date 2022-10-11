*** Settings ***
Library   SeliniumLibrary
Resource  Resources1.robot
Library   DataDriver     Data.xlsx   #sheet_name=Sheet2
Suite Setup    Opening my browser
Suite Teardown   Closing my browsers
#Test Setup   Open Browser  ${url}      ${browser}

Test Template  Invalid login
#Test Template  valid login
*** Test Cases ***
LoginTestUsingExcel using ${username} and ${password}
#ValidLoginTestUsingExcel using ${validusername} and ${validusername}
#changethe code
#again change the code
#
*** Keywords ***
Invalid login

    [Arguments]   ${username}   ${password}
    Inputing username   ${username}
    Inputing password   ${password}
    Click Login Button
    Error message should be visible


#valid login
#    [Arguments]   ${validusername}   ${validpassword}
#
#    Inputing validusername   ${validusername}
#    Inputing validpassword   ${validpassword}
#    Click Login Button
#    Dashbord page should be visible
