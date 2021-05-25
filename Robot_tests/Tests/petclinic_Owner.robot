*** Settings ***
Documentation                      Testsuite Owner-functionality
Resource                           ../Resources/keywords_owner.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners

*** Test Cases ***

User can access website.
    [Documentation]                 Verifying the page - access to welcome-page.
    [Tags]                          TC_1
    Go to Web Page
    End Web Test

User can access website and navigate to owner-list.
    [Documentation]                 Navigate to Owner-list.
    [Tags]                          TC_2
    Go to                           ${URL}
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    End Web Test

User can access website, navigate to owner-list and also refresh page.
    [Documentation]                 Refreshing the page.
    [Tags]                          TC_3
    Go to                           ${URL}
    Click Element Menu
    Click Element Menu_All
    Verify Page_OwnerList Loaded
    Verify Page Not Loaded After Refresh
    End Web Test

User can access website, and navigate to owner-list from homepage (Gherkins Syntax).
    [Tags]                          TC_4
    GIVEN that user has access to the web page
    AND user clicks on the menu "Owners"
    WHEN user clicks on menu option "All"
    THEN user will recieve the list of all current owners
