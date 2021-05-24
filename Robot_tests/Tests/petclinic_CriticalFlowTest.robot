*** Settings ***
Documentation                      Testsuite Critical Flow
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_petType.robot
Resource                           ../Resources/keywords_pet.robot
Resource                           ../Resources/keyword_addvisits.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Som en användare vill jag kunna köra ett test som testar det mest kritiska flödet hos PetClinic-hemsidan(Se beskrivning -> Documentation)
    [Documentation]                 Lägga till ny ägare - Lägga till ett husdjur för denna ägare - Lägga till ett besök för detta husdjur
    [Tags]                          GD_366
    Access Web Page & Verify Home Page Loaded