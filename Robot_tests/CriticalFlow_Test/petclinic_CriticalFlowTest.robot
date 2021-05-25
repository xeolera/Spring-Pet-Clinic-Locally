*** Settings ***
Documentation                      Testsuite Critical Flow
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_petType.robot
Resource                           ../Resources/keywords_pet.robot
Resource                           ../Resources/keyword_addvisits.robot
Resource                           ../Resources/keywords_owner.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Som en användare vill jag kunna köra ett test som testar det mest kritiska flödet hos PetClinic-hemsidan(Se beskrivning -> Documentation)
    [Documentation]                 Lägga till ny ägare - Lägga till ett husdjur för denna ägare - Lägga till ett besök för detta husdjur
    [Tags]                          GD_366

    Access Web Page & Verify Home Page Loaded
    Access to PetClinic && Navigates to Owners Page
    User Clicks "Add Owner" && Navigates to New Owner Page
    Input First Name in New Owner                               ${OWNER_FIRSTNAME_A}
    Input Last Name in New Owner                                ${OWNER_LASTNAME_A}
    Input Address in New Owner                                  ${OWNER_ADDRESS_A}
    Input City in New Owner                                     ${OWNER_CITY_A}
    Input Telephone in New Owner                                ${OWNER_TELEPHONE_A}
    User Adds New Owner && Owners Page Loaded
    User Clicks On Owner "Jeff Jeffson" && Owner Information Page Loads
    User Clicks On "Add New Pet" && Add Pet Page Loads
    User Inputs Name to the New Pet                             ${PET_NAME_A}
    User Inputs Birth Date to the New Pet                       ${PET_BIRTHDATE_A}
    User Chooses Type From List && Clicks Save Pet
    Owner Information Loads && User Clicks "Add Visit" Button
    Verify "New Visit" Page Has Been Loaded
    User Types Visit Date                                       ${PET_VISITDATE_A}
    User Types Description Then Clicks on "Add Visit" && Owner Information Page Loads
