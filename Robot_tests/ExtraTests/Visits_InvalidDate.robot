*** Setting ***
*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Resource                           ../Resources/keyword_Visits_invalidDate.robot
Library                            SeleniumLibrary
Test Setup                         Open browser                 ${URL}    ${BROWSER}
Test Teardown                      End Web Test
*** Variables ***
${URL}                          http://localhost:4200/
${BROWSER}                      Chrome


*** Test Cases ***
User can add a new Visit with Previous Dt to the Current Dt
      [Documentation]   This test adds visit
      [Tags]            Add a visit
        Given User on the Infotiv PetClinic page
        When User select the Owners with All
        And Click on Addnew and User enters Invalid Dates and Description
        Then System should not allow to add visits
        End Web Test
