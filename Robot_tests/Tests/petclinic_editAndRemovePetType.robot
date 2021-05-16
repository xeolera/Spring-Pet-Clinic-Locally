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
${URL2}             http://locatlhost:4200/petclinic/owners

*** Test Cases ***

Användaren kan påbörja ändringsprocessen genom "Edit"-knappen i Pet Types-sidan
    [Documentation]                 Verifiera att användaren kan starta processen att ändra en befintlig husdjurtyp
    [Tags]                          TF_C_1
    Go to PetClinic && Click Menu && Verify Page
    Click Button && Verify Edit and Input Field Page Loaded

Användaren kan mata in nya ändringen av husdjurtyp utan att spara
    [Documentation]                 Verifiera att användaren kan mata in egen input i inmatningsfälten utan att uppdatera
    [Tags]                          TF_C_2
    Go to PetClinic && Click Menu && Verify Page
    Click Button && Verify Edit and Input Field Page Loaded
    Input New Pet Type Text             HAMSTER

Användaren Lagra nya inmatningen av husdjur genom "Update"-knappen i Pet Types-sidan
    [Documentation]                 Verifiera att användaren kan lagra en husdjurtyp som har ändrats
    [Tags]                          TF_C_3
    Go to PetClinic && Click Menu && Verify Page
    Click Button && Verify Edit and Input Field Page Loaded
    Input New Pet Type Text             HAMSTER
    Click Button Update && Verify Pet Type Page Loaded

Användaren kan avbryta ändringsprocessen genom "Cancel"-knappen i Pet Types-sidan
    [Documentation]                 Verifiera att användaren kan avbryta ändringssessionen
    [Tags]                          TF_C_4
    Go to PetClinic && Click Menu && Verify Page
    Click Button && Verify Edit and Input Field Page Loaded
    Click Button Cancel && Verify Page Loaded

Användaren kan ta bort husdjurtypen "hästarärgrymma?//" från listan genom "Delete"-knappen
    [Documentation]                 Verifiera att användaren kan ta bort önskad husdjurtyp från listan
    [Tags]                          TF_C_5
    Go to PetClinic && Click Menu && Verify Page
    Delete PetType && Verify Page Loaded                    hästarärgrymma?//
