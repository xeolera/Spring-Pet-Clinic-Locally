*** Setting ***
*** Setting ***
Documentation                     This is some basic infor about the whole test suite
Resource                           ../Resources/Keyword_HomeButton.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${URL}                             http://localhost:4200/
${BROWSER}                         Chrome

*** Test Cases ***
#User verifies for Home button in OWNERS tab with all option
      #[Documentation]    This test checks for home button in OWNER tab
      #[Tags]             Home button

        #Given User on the Infotiv PetClinic page
        #When User select the Owners with All option
        #Then System shows Owners information with Home button and Add Owner button
        #End Web Test


User verifies for Home button in VETERINARIANS tab with all option
      [Documentation]    This test checks for home button VETERINARIANS tab
      [Tags]             Home button
        Given User on the Infotiv PetClinic page
        When User select the VETERINARIANS with All
        Then System shows Veterinarians information with Home button and Add button
        End Web Test

User verifies for Home button in PET TYPES tab
      [Documentation]    This test checks for home button PET TYPES tab
      [Tags]             Home button
        Given User on the Infotiv PetClinic page
        When User select the PET TYPES
        Then System shows Pet Types information with Home button and Add button
        End Web Test

User verifies for Home button in SPECIALITIES tab
      [Documentation]    This test checks for home button SPCIALITIES tab
      [Tags]             Home button
        Given User on the Infotiv PetClinic page
        When User select the SPECIALITIES with All
        Then System shows Specialities information with Home button and Add button
        End Web Test


