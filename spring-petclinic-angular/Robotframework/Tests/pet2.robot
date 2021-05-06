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


Test to change owner information
  [Documentation]    Edit owner information
  [Tags]             Edit owner
  Given that user has access to "petclinic" site
  When user changes owner information and saves
  Then changes should reflect in "Owners" list



