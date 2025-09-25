*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords **


    

*** Test Cases ***
testka
    Open Browser    url=https://signin.leb2.org/login    browser=Chrome
    Maximize Browser Window
    Input Text    //*[@id="input-1"]   65070507220
    Input Password    //*[@id="input-4"]    password=_pear1412
    Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/div[2]/div[2]/form/div/div[2]/button
    Sleep    10s
    Click Element    //*[@id="class_list_content"]/div[1]/div/div/div[1]/span
    Click Element    //*[@id="class_list_content"]/div[1]/div/div/div[2]/a[2]
    Click Element    //*[@id="classListMain"]/div[1]/div/div[4]/div/div[1]
    Click Element    //*[@id="sidebar"]/div/div[3]/div/ul/li[3]/a
    Wait Until Element Is Visible    //*[@id="table"]/tbody/tr[20]/td[1]
    Scroll Element Into View    //*[@id="table"]/tbody/tr[20]/td[1]
    ${Detail}    Get Text    //*[@id="table"]/tbody/tr[20]/td[1]
    Log To Console    ${Detail}
    Click Element    //*[@id="table"]/tbody/tr[20]/td[1]


