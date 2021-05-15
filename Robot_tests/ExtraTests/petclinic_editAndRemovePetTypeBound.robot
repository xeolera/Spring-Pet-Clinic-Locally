*** Settings ***
Documentation                      Testsuite Edit & Remove Pet Types
Resource                           ../Resources/keywords_petType.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners
${EMPTY}

*** Test Cases ***

Ändra en unik id husdjurtyp som har samma husdjurtypnamn som en annan
    [Documentation]                 Verifiera att användaren ändrar bara en unik husdjurtyp som har samma namn som annan husdjurtyp.
    [Tags]                          TF_D_1
    Go to PetClinic && Click Menu && Verify Page
    Edit ID 4 && Verify Page
    Input New Pet Type Text         papegoja
    Click Button Update && Verify Pet Type Page Loaded
    Edit ID 3 && Verify Page
    Input New Pet Type Text         papegoja
    Click Button Update && Verify Pet Type Page Loaded
    Edit ID 3 && Verify Page
    Input New Pet Type Text         papegoja2
    Click Button Update && Verify Pet Type Page Loaded

Ändra en giltig husdjurtyp till en ogiltig husdjurtyp
    [Documentation]                 Verifiera att webbsidan tillåter ändring från giltig till ogiltig husdjurtyp.
    [Tags]                          TF_D_2
    Go to PetClinic && Click Menu && Verify Page
    Edit ID 1 && Verify Page
    Input New Pet Type Text         katt 123?!?!
    Click Button Update && Verify Pet Type Page Loaded

Ändra en giltig husdjurtyp till enbart blank input
    [Documentation]                 Verifiera att webbsidan tillåter ogiltiga ändringen.
    [Tags]                          TF_D_3
    Go to PetClinic && Click Menu && Verify Page
    Edit ID 1 && Verify Page
    Input Blank && Check Update And Verify Page

Ta bort en unik id husdjurtyp som har samma husdjurtypnamn som en annan
    [Documentation]                 Verifiera att man tar bort rätt id på husdjurtyper som innehåller samma husdjurtypnamn.
    [Tags]                          TF_D_4
    Go to PetClinic && Click Menu && Verify Page
    Edit Pet Types Names For ID 2                   octopus
    Edit Pet Types Names For ID 3                   octopus
    Delete PetType_ID2 && Verify Page Loaded



