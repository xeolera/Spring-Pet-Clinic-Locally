*** Settings ***
Documentation                      Testsuite Add Pet Type
Resource                           ../Resources/keywords_petType.robot
Resource                           ../Resources/keywords_general.robot
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
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             egen input

Användaren kan lägga till ny husdjurtyp i listan
    [Documentation]                 Lägga till häst som ny husdjurtyp via "add"-knappen på webbsidan
    [Tags]                          TF_2
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             häst
    Pet Type Saves and Page Loads & Verifies

Användaren kan lägga till ny husdjurtyp i listan genom enter tryck i tangetbordet
    [Documentation]                 Lägga till oxe som ny husdjurtyp via "enter"-knappen på användarens tangentbord
    [Tags]                          TF_3
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             oxe
    Click Element Enter
    Verify Page_petType Loaded

Användaren kan lägga till mer än en husdjurtyp i listan
    [Documentation]                 Lägga till stork och fisk som husdjurtyper i listan
    [Tags]                          TF_4
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             stork
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text              fisk
    Pet Type Saves and Page Loads & Verifies