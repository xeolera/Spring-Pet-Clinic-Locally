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
${Petname1}     Häst
${Petname2}     77383


*** Test Cases ***


Test to add a new pet
  [Documentation]    Test 1 to add new pet
  [Tags]             test 1

  Given when user has access to the web page and pettype exists
  And user locates the “owner list”-page
  And user clicks on the chosen owner
  And user clicks on “add new pet”
  And user input information to the pet
  When user clicks on “Save pet”
  Then the user will have succesfully added a new pet to the chosen owner

Test to add a pet with numbers instead of letters

   [Documentation]     Test adding pet with numbers as name
   [Tags]              Test2

    Given a user is on the landing page
    When the user adds a pet with numbers in the name field
    Then the pet should be added

