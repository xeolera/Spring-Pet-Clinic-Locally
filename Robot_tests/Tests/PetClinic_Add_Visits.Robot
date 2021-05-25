*** Setting ***
*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Resource                           ../Resources/keyword_addvisits.robot
Resource                           ../Resources/keywords_general.robot

Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test
*** Variables ***
${URL}                          http://localhost:4200/
${BROWSER}                      Chrome

*** Test Cases ***
User can add a new Visit
      [Documentation]   This test adds visit
      [Tags]            Add a visit
        Given User on the Infotiv PetClinic page
        When User select the Owners with All
        And Click on Addnew and User enters valid Dates and Description
        Then System shows the added visits

