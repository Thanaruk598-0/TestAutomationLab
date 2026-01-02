*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     file:///D:/CP353004/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}                 Chrome	

*** Test Cases ***
Empty Phone Number
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Click Button  id=registerButton

    Page Should Contain    Please enter your phone number!!

    Capture Page Screenshot

    Close Browser
