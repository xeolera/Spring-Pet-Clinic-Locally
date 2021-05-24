*** Settings ***
Documentation                      Testsuite Extra Veterinary Functionality
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Användaren får upp felmeddelanden om hen matar in mindre än två karaktärer i för- och efternamnsfälten
    [Documentation]                 Kontrollera kriteriefunktionen för inmatningsfälten under för- och efternamn
    [Tags]                          GD_403
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input First Name With Less Than 2 Characters && Check If Criteria Shows Up              j
    Input Last Name With Less Than 2 Characters && Check If Criteria Shows Up               j

Användarens "Save Vet"-knapp lyser grått ifall hen har inte matat in för- eller efternamn korrekt
    [Documentation]                 Kontrollera att användaren inte har möjlighet att spara ifall kriterierna inte har uppnåtts.
    [Tags]                          GD_404
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                                                      FirstNameCorrect
    Input Edit Veterinarian Last Name                                                       LastNameCorrect
    #Checking if the button "Save Vet" shows that the criteria has been met.
    Input First Name With Less Than 2 Characters && Check If Criteria Shows Up              e
    Input Last Name With Less Than 2 Characters && Check If Criteria Shows Up               e
    #Checking if the button "Save Vet" changes to greyish colour because the criteria has not been met.

Användaren kan bocka i mer än ett specialitet till valda veterinären
    [Documentation]                 Kontrollera att specialitetsfunktionen tillåter fler än en bockningsval.
    [Tags]                          GD_405
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    User Clicks On All Of Specialities

Användaren kan avbryta "drop down"-menyn vid val av Specialitet med hjälp av vänster klick på valfri tom plats i webbsidan
    [Documentation]                 Undersöka om möjlighet att avbryta "dropdown"-menyn finns för användaren via musklick.
    [Tags]                          GD_405
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    User Clicks Speciality && Clicks On Empty Webbpage Space To Cancel The Menu

Användaren kan avbryta "drop down"-menyn vid val av Specialitet med hjälp av ESC-knappen (Escape)
    [Documentation]                 Undersöka om möjlighet att avbryta "dropdown"-menyn finns för användaren via tangentbordet.
    [Tags]                          GD_406
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    User Click Speciality && Presses ESC Key
    Verify Edit Veterinarian Page Loaded

Användaren kan mata in specialtecken i för- och efternamnfälten
    [Documentation]                 Verifiera att inmatning av specialtecken godkänns
    [Tags]                          GD_407
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                           Stefan?)&%
    Input Edit Veterinarian Last Name                            Nikolic={[&!
    Check If Criteria Shows Green Icon Confirmation
    #Kolla ifall inmatningsfälten visar grönt "bock" som visar godkänt eller rött "kryss" som visar ej godkänt.

Användaren kan mata in nummer i för- och efternamnfälten
    [Documentation]                 Verifiera att inmatning av nummer godkänns
    [Tags]                          GD_408
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                           Stefan125366
    Input Edit Veterinarian Last Name                            Nikolic53123
    Check If Criteria Shows Green Icon Confirmation

Användaren kan ändra en veterinär till ologiska input och lagra det slutligen i listan av befintliga veterinärer
    [Documentation]                 Verifiera att inmatning av nummer godkänns
    [Tags]                          GD_409
    Access Web Page & Verify Home Page Loaded
    User Click Menu && Veterinarians Page Loaded
    User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Input Edit Veterinarian First Name                           Stefan125366
    Input Edit Veterinarian Last Name                            Nikolic53123
    Check If Criteria Shows Green Icon Confirmation
    User Clicks "Save Vet" && Veterinarians Page Loaded