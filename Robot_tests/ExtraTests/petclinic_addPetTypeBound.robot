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

Användaren kan skapa husdjurtyp som innehåller specialtecken
    [Documentation]                 Verifiera att webbsidan tillåter specialtecken när man matar in husdjurtypnamn.
    [Tags]                          TF_B_1
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästärgrymma?//
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan skapa husdjurtyp som innehåller nummer
    [Documentation]                 Verifiera att webbsidan tillåter nummer när man matar in husdjurtypnamn.
    [Tags]                          TF_B_2
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästärgrymma123456
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan mata in fler än 30 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera att webbsidan tillåter mer än 30 karaktärer under inmatningen av husdjurtyp
    [Tags]                          TF_B_3
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästarcool123456789012345678901
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan mata in mellan 1 och 81 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera att webbsidan tillåter mellan 1 och 81 bokstäver vid inmatning av ny husdjurtyp
    [Tags]                          TF_B_4
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästarcoolhästarcoolhästarcoolhästarcool
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan mata in 81 bokstäver vid skapandet av ny husdjurtyp
    [Documentation]                 Verifiera husdjurtypfältets maxgräns vid inmatning av ny husdjurtyp.
    [Tags]                          TF_B_5
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoola
    Click Button_PetType_save
    Verify Page_petType Loaded
    #PossibleBug - Says it's passed but when pressing save the saved input doesn't show up on the list.

Användaren kan skapa ny husdjurtyp som innehåller mellanslag (space)
    [Documentation]                 Verifiera att mellanslag tillåts vid inmantning av ny husdjurtyp
    [Tags]                          TF_B_6
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             hästarcoola eller hur gänget
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan skapa ytterligare en befintlig husdjurtyp från listan (duplikat)
    [Documentation]                 Verifiera att det går att lagra samma husdjurtyp en gång till
    [Tags]                          TF_B_7
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             marsvin
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             marsvin
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan skapa husdjurtyp som innehåller bara stora bokstäver (CAPS)
    [Documentation]                 Verifiera att det går att skapa husdjurtyp som innehåller bara stora bokstäver (caps)
    [Tags]                          TF_B_8
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             IGELKOTT
    Click Button_PetType_save
    Verify Page_petType Loaded

Användaren kan skapa 50 samma husdjurtyp efter varann
    [Documentation]                 Utforska maxgränsen på hur många husdjurtyper kan synas i listan
    [Tags]                          TF_B_9
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded
    Click Button_petType_add
    Verify Inputfield_newPetType
    Input New Pet Type Text             maxgräns
    Click Button_PetType_save
    Verify Page_petType Loaded


    #hästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoolhästarcoola
    #11111111111111111111111111111111111144444444455555555555666666666666677778888888