*** Settings ***
Documentation                      Testsuite Data Gathering for Pet Clinic Logs - Group D
Resource                           ../Resources/keywords_dataGathering.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/

*** Test Cases ***


Datagathering Scenario 1
    [Documentation]                 Adding a new owner, adding two new pets to the owner, removing one pet, then editing the owners lastname.
    [Tags]                          Datasamling_1

    User Adds New Owner && Page is Verified
    Input Owner firstName                                                   Lill
    Input Owner lastName                                                    Babz
    Input Owner address                                                     Munkedalsvägen 5
    Input Owner city                                                        Göteborg
    Input Owner telephone                                                   0701231231
    User Clicks "Add Owner" && Owner Page Verifies
    User Click On "Lill Babz" Owner && Owner Information Page Verifies
    User Clicks Button "Add New Pet" && Add Pet Page Verifies
    Input Add Pet Name                                                      Sören
    Input Birth Date                                                        2021/05/01
    User Inputs Birthdate && Chooses "Cat" As Pet Type
    User Clicks on "Save Pet" && Owner Information Page Loads
    User Clicks Button "Add New Pet" && Add Pet Page Verifies
    Input Add Pet Name                                                      Britt-Marie
    Input Birth Date                                                        2021/05/02
    User Inputs Birthdate && Chooses "Cat" As Pet Type
    User Clicks on "Save Pet" && Owner Information Page Loads
    User Deletes Pet && Owner Information Page Loads
    User Click "Edit Owner" && Owner Page Loaded
    Edit Last Name Element Text                                             Babben
    User Updates Owner Last Name && Owner Information Page Loads

Datagathering Scenario 2
    [Documentation]                 Adding a pet type and then remove it.
    [Tags]                          Datasamling_2

    User Clicks Pet Type Page && Page is Verified
    User Clicks Button "Add" && Input Field Pops Up
    Input New Pet Type              oxe
    User Saves New Pet && Pet Type Page Loads
    User Succesfully Deletes Oxe && Pet Type Page Loads



