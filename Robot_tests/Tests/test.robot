*** Settings ***
Documentation                      Testsuite New Test Suite
Resource                           ../Resources/keywords_petType.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners

*** Test Cases ***

Ta bort ägare
    [Documentation]                 Kunna ta bort ägare från petclinic
    [Tags]                          GD-301
    Go to Petclinic Page && Click Menu Hype


