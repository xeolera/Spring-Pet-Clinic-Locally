*** Settings ***
Documentation                Testar Selenium och RobotFramework
Resource                     ../Resources/keywords_general.robot
Resource                     ../Resources/keywords_vet.robot

Library                      SeleniumLibrary
Test Setup                   Begin Web Test
Test Teardown                End Web Test

*** Variables ***
${BROWSER}      chrome
${URL}          http://localhost:4200/

*** Test Cases ***
User can remove vet
      [Documentation]   Remove Vet
      [Tags]            GD-435

      Given when Im on the landing page
      When l click on veterinarians
      And delete a specific veterinar
      Then he should be deleted





