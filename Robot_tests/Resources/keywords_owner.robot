*** Settings ***

*** Keywords ***
Begin Web Test
    Open browser                     about:blank             ${BROWSER}
    Set selenium timeout             10
    Set selenium speed               1

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                           ${URL}

Verify Page Not Loaded After Refresh
    Go to                           ${URL2}
    Wait Until Page Contains Element        xpath://html/body/pre
    Page Should Contain                     Resource was not found.

Verify Page Loaded
    ${LINK_TEXT}                    Get Title
    Should Be Equal                 ${LINK_TEXT}      SpringPetclinicAngular
    Page Should Contain             Welcome to Petclinic

GIVEN that user has access to the web page
    Go to Web Page

Click Element Menu
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a

Click Element Menu_All
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a

AND user clicks on the menu "Owners"
    Click Element Menu

WHEN user clicks on menu option "All"
    Click Element Menu_All

Verify Page_OwnerList Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-list/div/div/h2
    Page Should Contain                     Owners

THEN user will recieve the list of all current owners.
    Verify Page_OwnerList Loaded

End Web Test
    Close Browser