*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.facebook.com/?locale=th_TH 
${BROWSER}    chrome            
${User}    0905494148
${password}    pear261mc


*** Keywords ***
Open Website
    Open Browser    ${URL}    ${BROWSER}


*** Test Cases ***
TC01-OpenWebsite
    Open Website
    Maximize Browser Window
    sleep        5 s
    Close All Browsers

TC02-Login
    Open Website
    sleep    time_=3s
    Input Text    name=email    ${User}
    Input Password    name=pass    ${password}
    Wait Until Element Is Visible    xpath=//*[@data-testid="royal-login-button"]    10s
    Click Button    xpath=//*[@data-testid="royal-login-button"]
    Sleep    10s

   
    

    



