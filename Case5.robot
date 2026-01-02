*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     file:///D:/CP353004/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}                 Chrome	

*** Test Cases ***
Empty First and Last Name
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton

    Page Should Contain    Please enter your name!!

    Capture Page Screenshot

    Close Browser
