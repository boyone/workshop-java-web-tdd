*** Settings ***
Library   SeleniumLibrary
Test Teardown  Close Browser

*** Variables ***
${URL}   http://localhost:8090/demo/
${BROWSER}   chrome

*** Test Case ***
Login success
#    เข้ามาหน้า login
    Open Browser    ${URL}     ${BROWSER}
    login ด้วยผู้ใช้งานชื่อ somkiat
    ต้องแสดงหน้า welcome

*** Keywords ***
ต้องแสดงหน้า welcome
    Wait Until Page Contains   TODO in workshop

login ด้วยผู้ใช้งานชื่อ somkiat
    Input Text   id=user  somkiat
    Input Text   id=pin  12345678789
    Click Button   Login

เข้ามาหน้า login
    Open Browser   ${URL}
    ...  browser=${BROWSER}
    ...  remote_url=http://10.10.99.82:4444/wd/hub
    ...  desired_capabilities=browserName:chrome
