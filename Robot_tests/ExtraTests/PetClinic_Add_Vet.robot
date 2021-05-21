*** Settings ***
Documentation                      Testsuite Add Pet Type
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/

*** Test Cases ***

Användaren kan lägga till ny Veterinär med namn innehållande siffror
    [Documentation]                 Verifiera att användaren kan lägga till ny veterinär på hemsidan
    [Tags]                          GD-418
    Access Web Page & Verify Home Page Loaded
    Click Menu Add New Veterinary
    Input New Veterinary First Name         Builder101
    Input New Veterinary Last Name          Bob203
    Click "Save Vet" For Add

Användaren kan lägga till ny Veterinär med namn innehållande enbart siffror
    [Documentation]                 Verifiera att användaren kan lägga till ny veterinär på hemsidan
    [Tags]                          GD-419
    Access Web Page & Verify Home Page Loaded
    Click Menu Add New Veterinary
    Input New Veterinary First Name         101
    Input New Veterinary Last Name          203
    Click "Save Vet" For Add

