*** Settings ***
Documentation    Test Images on UI
Library	SeleniumLibrary

*** Test Cases ***
Retrieve Image Text
    [Tags]    IMAGE_TEST
    open browser	https://lifehacks.io/life-quotes	chrome
    Maximize Browser Window
    sleep	5s
    ${get element}	get_web_elements	(//img[@title='Life Quotes'])[1]
    log to console	${get element}
    close browser
