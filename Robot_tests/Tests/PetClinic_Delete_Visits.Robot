*** Setting ***
*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Resource                           ../Resources/keyword_addvisits.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Open browser                 ${URL}    ${BROWSER}
Test Teardown                      End Web Test
*** Variables ***
${URL}                          http://localhost:4200/
${BROWSER}                      Chrome


*** Test Cases ***
User can delete a Visit
      [Documentation]   This test deletes visit
      [Tags]            Delete a visit
        Given User on the Infotiv PetClinic page
        When User select the Owners with All
        And Click on Delete button for visits
        Then System should deleted visits
        End Web Test