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

Användaren kan lägga till ny Veterinär utan specialitet
    [Documentation]                 Verifiera att användaren kan lägga till ny veterinär på hemsidan
    [Tags]                          GD-416
    Access Web Page & Verify Home Page Loaded
    Click Menu Add New Veterinary
    Input New Veterinary First Name         Builder
    Input New Veterinary Last Name          Bob
    Click "Save Vet" For Add

Användaren kan lägga till ny Veterinär med Surgery som specialitet
    [Documentation]                 Verifiera att användaren kan lägga till ny veterinär på hemsidan
    [Tags]                          GD-417
    Access Web Page & Verify Home Page Loaded
    Click Menu Add New Veterinary
    Input New Veterinary First Name         Builder
    Input New Veterinary Last Name          Bob
    Chose Type For Add New Vet Surgery
    Click "Save Vet" For Add

Användaren kan lägga till ny Veterinär med enbart 1 tecken i namnfältet
    [Documentation]                 Verifiera att användaren kan lägga till ny veterinär på hemsidan
    [Tags]                          GD-420
    Access Web Page & Verify Home Page Loaded
    Click Menu Add New Veterinary
    Input New Veterinary First Name         T
    Input New Veterinary Last Name          1
    Chose Type For Add New Vet Surgery
    Click "Save Vet" For Add