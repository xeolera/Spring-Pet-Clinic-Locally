*** Settings ***
Documentation                      Testsuite Edit & Remove Speicalities
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_specialities.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***

${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://locatlhost:4200/petclinic/owners

*** Test Cases ***

Användaren har åtkomst till hemsidan och kan redigera en specialitet
    [Documentation]                 Verifiera att användaren kan ändra en redan existerande specialitet
    [Tags]                          GD-432
    Access Web Page && Verify Home Page Loaded
    User Clicks Menu && Specialties Page Loaded
    User Clicks Edit && Edit Specialty Loaded

Användaren kan radera en specialitet
    [Documentation]                 Verifiera att användaren kan radera en specialitet
    [Tags]                          GD-433
    Access Web Page && Verify Home Page Loaded
    User Clicks Menu && Specialties Page Loaded
    #För att detta ska fungera måste specialiteten vara helt fristående (Ingen veterinär får inneha specialiteten) vilket betyder att man måste
    #gå in i vet-listan, redigera och ta bort given specialitet för att sedan gå tillbaka och klicka delete i listan över specialiteter.
    #För att göra ett passerande test kommer vi först skapa en ny specialitet som inte är bunden och sedan radera den utan att låsa den till en veterinär.
    User Clicks Add && Specialties Division Loaded
    Input Specialty name            Test
    User Clicks Save && Verify Save
    User Clicks Delete && Verify Delete

Användaren kan inte radera en bunden specialitet
    [Documentation]                 Verifiera att användaren inte kan radera en existerande specialitet
    [Tags]                          GD-447
    Access Web Page && Verify Home Page Loaded
    User Clicks Menu && Specialties Page Loaded
    User Clicks Delete && Verify No Deletion

Användaren kan avbryta en pågående redigering utan att spara
    [Documentation]                 Verifiera att användaren kan avbryta redigeringen utan att datan sparas
    [Tags]                          GD-434
    Access Web Page && Verify Home Page Loaded
    User Clicks Menu && Specialties Page Loaded
    User Clicks Edit && Edit Specialty Loaded
    Abort edit && Verify Page
