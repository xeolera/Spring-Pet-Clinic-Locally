*** Settings ***
Documentation                      Testsuite Website Performance
Resource                           ../Resources/keywords_nonFunctionalTest.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners

*** Test Cases ***

Website can handle multiple navigation requests from homepage to owner list.
    [Documentation]                 Check perfomance of the webpage
    [Tags]                          TC_n1
    Go to Web Page
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    End Web Test

Website can handle multiple menu requests from user.
    [Documentation]                 Check perfomance of the webpages menu navigation
    [Tags]                          TC_n2
    Go to Web Page
    Click Element Menu_Veterinarians
    Click Element Menu_Pet_Types
    Verify Page_Pet_Types Loaded
    Click Element Menu_Specialties
    Verify Page_Specialties Loaded
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu_Veterinarians
    Click Element Menu_Pet_Types
    Verify Page_Pet_Types Loaded
    Click Element Menu_Specialties
    Verify Page_Specialties Loaded
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu_Veterinarians
    Click Element Menu_Pet_Types
    Verify Page_Pet_Types Loaded
    Click Element Menu_Specialties
    Verify Page_Specialties Loaded
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded
    Go to Web Page
    Click Element Menu_Veterinarians
    Click Element Menu_Pet_Types
    Verify Page_Pet_Types Loaded
    Click Element Menu_Specialties
    Verify Page_Specialties Loaded
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Menu_Home
    Verify Page_Home Loaded

Website can handle multiple button requests from user.
    [Documentation]                 Check owner page's button functionalities
    [Tags]                          TC_n3
    Go to Web Page
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded
    Click Element Owner_AddOwner
    Verify Page_NewOwner
    Click Element Owner_Back
    Verify Page_OwnerList Loaded


