*** Settings ***
Documentation                Testar Selenium och RobotFramework
Resource                     ../Resources/keywords_pet.robot
Library                      SeleniumLibrary
Test Setup                   Begin Web Test
Test Teardown                End Web Test

*** Variables ***
${BROWSER}      chrome
${URL}          http://localhost:4200/


*** Test Cases ***

Access website
    [Documentation]             Test for adding a new pet
    [Tags]                      Access_test1
    Set Selenium Speed          0
    #Test website connection
    Wait until page contains        SpringPetclinicAngular
    Click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]
    click element                   xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    input text                      xpath://*[@id="name"]   Ko
    click element                   xpath://*[@id="pettype"]/div[2]/div/button

Gherkin
  [Documentation]    Test 2 gherkin
  [Tags]             2
  Given when user has access to the web page
  When a user adds a pet
  And user clicks on “Save pet”



Test varabiels as input for name

    [Documentation]             Test for adding a new pet with varabiels
    [Tags]                      Access_test2
    Set Selenium Speed          0
    #Test website connection
    Wait until page contains        SpringPetclinicAngular
    Click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]
    click element                   xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    input text                      xpath://*[@id="name"]   87348743
    click element                   xpath://*[@id="pettype"]/div[2]/div/button
