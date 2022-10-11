*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
winndowclose
    open browser    https://robotframework.org/    chrome
    maximize browser window
    sleep  5

    click link    //a[normalize-space() = 'AppiumLibrary']
    sleep   5
    switch window   Robot Framework
    close window
    sleep   3
    close browser



