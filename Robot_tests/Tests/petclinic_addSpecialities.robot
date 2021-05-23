*** Settings ***
Documentation                      Testsuite Specialities Functionality
Resource                           ../Resources/keywords_specialities.robot
#Resource                           ../Resources/keywords_general.robot
Library                             SeleniumLibrary
Test Setup                          Begin Web Test
Test Teardown                       End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/

*** Test Cases ***

Add a speciality in the Petclinic application through Robot framework
    [Documentation]                 Verifying that a user can add speciality
    [Tags]                          GD_388
    Access Web Page & Verify Home Page Loaded
    User Clicks Menu && Specialties Page Loaded
    User Clicks Add && Specialties Division Loaded
    Input Specialty name && Clicks on Save
    System shows the added Specialties



