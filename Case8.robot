*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     file:///D:/CP353004/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}                 Chrome	

*** Test Cases ***
Invalid Phone Number
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         1234
    Click Button  id=registerButton

    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)

    Capture Page Screenshot

    Close Browser
