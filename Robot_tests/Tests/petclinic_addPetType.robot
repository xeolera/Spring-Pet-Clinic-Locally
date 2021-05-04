*** Settings ***
Documentation                      Testsuite Add Pet Type
Resource                           ../Resources/keywords_petType.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners

*** Test Cases ***

Användaren kan mata in husdjurtyp i inmantingsfälten
    [Documentation]                 Verifiera att användaren kan mata in egen input i inmatningsfälten
    [Tags]                          TF_1
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             egen input