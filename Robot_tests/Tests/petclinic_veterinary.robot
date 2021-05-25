*** Settings ***
Documentation                      Testsuite Veterinary Functionality
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Användaren kan navig era sig till "Veterinär"-sidan via menyn
    [Documentation]                 Verifiera att användaren kan ha åtkomst till veterinär-sidan genom att klicka på menyn
    [Tags]                          GD_397
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded

Användaren kan påbörja ändringsprocessen genom att klicka på "Edit Vet"-knappen bredvid valda veterinären.
    [Documentation]                 Verifiera att användaren kan starta ändringen av en veterinär via knapp
    [Tags]                          GD_398
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded

Användaren kan mata in information i för- och efternamnsfälten
    [Documentation]                 Verifiera att inmatningsfälten syns när man matar in information
    [Tags]                          GD_399
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                                 Stefan
    Input Edit Veterinarian Last Name                                   Nikolic

Användaren kan klicka på specialitet och få fram en "drop down"-meny av tillgängliga specialiteter att välja emellan
    [Documentation]                 Verifiera att användaren kan få fram alternativ av specialiteter när man klickar på drop down menyn
    [Tags]                          GD_400
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Click Speciality DropDown-Box

Användaren kan välja specialitet till valda veterinären
    [Documentation]                 Verifiera att användaren kan välja ett specialitet till veterinären som skall ändras
    [Tags]                          GD_401
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    User Clicks Speciality && Chooses Radiology

Användaren kan ändra och spara veterinärens information i listan av befintliga veterinärer
    [Documentation]                 Verifiera att användaren kan få fram alternativ av specialiteter när man klickar på drop down menyn
    [Tags]                          GD_402
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                                  Stefan
    Input Edit Veterinarian Last Name                                   Nikolic
    User Clicks Speciality && Chooses Radiology
    User Clicks "Save Vet" && Veterinarians Page Loaded


