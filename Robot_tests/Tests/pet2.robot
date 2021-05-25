*** Settings ***
Documentation                Testar Selenium och RobotFramework
Resource                     ../Resources/keywords_pet.robot
Resource                     ../Resources/keywords_general.robot
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
#__________________________________________________

Test to change owner information with special signs
  [Documentation]    Edit owner information with special signs
  [Tags]             Edit owner

  Given that user has access to the "petclinic" site
  When user changes owner information with special signs and saves
  Then changes should reflect in the "Owners" list


#___________________________________________________________________
Edit pet
  [Documentation]    Edit pet information
  [Tags]             Edit pet

  Given that user has access to petclinic site
  And user click on element edit pet
  when user changes pet information pet name
  Then changes should reflect in the name field

#____________________________________________________________________________________________________________
Edit pet empty namefield
  [Documentation]    Edit pet information
  [Tags]             Edit pet

  Given that im on the landing page
  When l edit a pet
  And leave the name filed empty
  Then an error should occur




