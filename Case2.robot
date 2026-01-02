*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     file:///D:/CP353004/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}                 Chrome	

*** Test Cases ***
Register Success No Organization Info
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Capture Page Screenshot

    Close Browser
