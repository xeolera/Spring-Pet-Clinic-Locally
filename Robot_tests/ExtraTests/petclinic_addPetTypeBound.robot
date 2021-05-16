*** Settings ***
Documentation                      Testsuite Add Pet Type Extra
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

Användaren kan skapa husdjurtyp som innehåller specialtecken
    [Documentation]                 Verifiera att webbsidan illåter specialtecken när man matar in husdjurtypnamn.
    [Tags]                          TF_B_1
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text                             hästärgrymma?//
    Pet Type Saves and Page Loads & Verifies

Användaren kan skapa husdjurtyp som innehåller nummer
    [Documentation]                 Verifiera att webbsidan tillåter nummer när man matar in husdjurtypnamn.
    [Tags]                          TF_B_2
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             hästärgrymma123456
    Pet Type Saves and Page Loads & Verifies

Användaren kan mata in fler än 30 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera att webbsidan tillåter mer än 30 karaktärer under inmatningen av husdjurtyp
    [Tags]                          TF_B_3
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             hästarcool123456789012345678901
    Pet Type Saves and Page Loads & Verifies

Användaren kan mata in mellan 1 och 81 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera att webbsidan tillåter mellan 1 och 81 bokstäver vid inmatning av ny husdjurtyp
    [Tags]                          TF_B_4
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             hästarcoolhästarcoolhästarcoolhästarcool
    Pet Type Saves and Page Loads & Verifies

Användaren kan mata in 81 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera husdjurtypfältets maxgräns vid inmatning av ny husdjurtyp.
    [Tags]                          TF_B_5
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             hästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoola
    Pet Type Saves and Page Loads & Verifies
    #PossibleBug - Says it's passed but when pressing save the saved input doesn't show up on the list.

Användaren kan skapa ny husdjurtyp som innehåller mellanslag (space)
    [Documentation]                 Verifiera att mellanslag tillåts vid inmantning av ny husdjurtyp
    [Tags]                          TF_B_6
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             hästarcoola eller hur gänget
    Pet Type Saves and Page Loads & Verifies

Användaren kan skapa ytterligare en befintlig husdjurtyp från listan (duplikat)
    [Documentation]                 Verifiera att det går att lagra samma husdjurtyp en gång till
    [Tags]                          TF_B_7
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             marsvin
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             marsvin
    Pet Type Saves and Page Loads & Verifies

Användaren kan skapa husdjurtyp som innehåller bara stora bokstäver (CAPS)
    [Documentation]                 Verifiera att det går att skapa husdjurtyp som innehåller bara stora bokstäver (caps)
    [Tags]                          TF_B_8
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             IGELKOTT
    Pet Type Saves and Page Loads & Verifies

Användaren kan skapa 50 samma husdjurtyp efter varann
    [Documentation]                 Utforska maxgränsen på hur många husdjurtyper kan synas i listan
    [Tags]                          TF_B_9
    Go to PetClinic && Click Menu && Verify Page
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
   Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
    Click Button Add && Verify Input Field Visible
    Input New Pet Type Text             maxgräns
    Pet Type Saves and Page Loads & Verifies
