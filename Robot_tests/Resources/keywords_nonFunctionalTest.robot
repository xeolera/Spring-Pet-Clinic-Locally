*** Settings ***

*** Keywords ***
Begin Web Test
    Open browser                     about:blank             ${BROWSER}
    Set selenium timeout             10

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                           ${URL}

Verify Page Loaded
    ${LINK_TEXT}                    Get Title
    Should Be Equal                 ${LINK_TEXT}      SpringPetclinicAngular
    Page Should Contain             Welcome to Petclinic

Click Element Menu
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a

Click Element Menu_All
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a

Click Element Menu_Veterinarians
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/a

Click Element Menu_Pet_Types
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Click Element Menu_Specialties
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[5]/a

Click Element Menu_Home
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[1]/a/span[2]

Click Element Owner_AddOwner
    Click Element                   xpath://html/body/app-root/app-owner-list/div/div/div/div/button

Click Element Owner_Back
    Click Element                   xpath://html/body/app-root/app-owner-add/div/div/form/div[7]/div/button[1]

Verify Page_NewOwner
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-add/div/div/h2
    Page Should Contain                     New Owner

Verify Page_Pet_Types Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/h2
    Page Should Contain                     Pet Types

Verify Page_OwnerList Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-list/div/div/h2
    Page Should Contain                     Owners

Verify Page_Specialties Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-specialty-list/div/div/h2
    Page Should Contain                     Specialties

Verify Page_Home Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-welcome/h1
    Page Should Contain                     Welcome to Petclinic

End Web Test
    Close Browser