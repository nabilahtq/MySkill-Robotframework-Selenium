*** Settings ***
Library                   SeleniumLibrary
Suite Setup               Open Browser    ${WebSauceDemo}   ${BROWSER}
Suite Teardown            Close Browser
Variables                 ../resources/login_locators.yaml


*** Variables ***
${WebSauceDemo}            https://www.saucedemo.com/
${BROWSER}                 chrome

# #Locator
# ${UsernameField}           //input[@id="user-name"]
# ${PasswordField}           //input[@id="password"]
# ${LoginButton}             //input[@id="login-button"]


*** Keywords ***
#bisa menggunakan test case atau langsung dengan suite setup
# Open Browser to WebSauceDemo
#     Open Browser    ${WebSauceDemo}   ${BROWSER}

Input Username
    Input Text  ${txtUsername}  standard_user

Input password
    Input Text   ${txtPassword}   secret_sauce

Input invalid Username
    Input Text  ${txtUsername}  123


Click button login
    Click Element   ${btnLogin}
    Sleep    1s

Verify on Login page
    Page Should Contain    Products

***Test Cases ***
# User Login with valid data
#     # Open Browser to WebSauceDemo
#     Input Username
#     Input password
#     Click button login
#     Verify on Login Page

User Login with invalid data
    # Open Browser to WebSauceDemo
    Input invalid Username
    Input password
    Click button login
