*** Settings ***

*** Keywords ***

Verify Page Not Loaded After Refresh
    Go to                           ${URL2}
    Wait Until Page Contains Element        xpath://html/body/pre
    Page Should Contain                     Resource was not found

GIVEN that user has access to the web page
    Go to Web Page

Click Element Menu
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a

Click Element Menu_All
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a

Access to PetClinic && Navigates to Owners Page
    Click Element Menu
    Click Element Menu_All

AND user clicks on the menu "Owners"
    Click Element Menu

WHEN user clicks on menu option "All"
    Click Element Menu_All

Verify Page_OwnerList Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-list/div/div/h2
    Page Should Contain                     Owners

THEN user will recieve the list of all current owners
    Verify Page_OwnerList Loaded

Click Button "Add Owner" Start
    Click Element                           xpath://html/body/app-root/app-owner-list/div/div/div/div/button

Click Button "Add Owner" End
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[7]/div/button[2]

Verify Page "New Owner" Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-add/div/div/h2
    Page Should Contain                     New Owner

User Clicks "Add Owner" && Navigates to New Owner Page
    Click Button "Add Owner" Start
    Verify Page "New Owner" Loaded

Input First Name in New Owner
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[2]/div/input
    Input Text                              id:firstName        ${search_term}

Input Last Name in New Owner
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[3]/div/input
    Input Text                              id:lastName         ${search_term}

Input Address in New Owner
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[4]/div/input
    Input Text                              id:address          ${search_term}

Input City in New Owner
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[5]/div/input
    Input Text                              id:city             ${search_term}

Input Telephone in New Owner
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[6]/div/input
    Input Text                              id:telephone        ${search_term}

User Adds New Owner && Owners Page Loaded
    Click Button "Add Owner" End
    Verify Page_OwnerList Loaded

Click On Owner "Jeff Jeffson" ID
    Click Element                           xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[11]/td[1]/a

Verify Owner Information on "Jeff Jeffson" Loads
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-detail/div/div/h2[1]
    Page Should Contain                     Owner Information

User Clicks On Owner "Jeff Jeffson" && Owner Information Page Loads
    Click On Owner "Jeff Jeffson" ID
    Verify Owner Information on "Jeff Jeffson" Loads

Click Button "Add Visit" on Jeff Jeffson's Page
    Click Element                           xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[3]

Owner Information Loads && User Clicks "Add Visit" Button
    Verify Owner Information on "Jeff Jeffson" Loads
    Click Button "Add Visit" on Jeff Jeffson's Page
