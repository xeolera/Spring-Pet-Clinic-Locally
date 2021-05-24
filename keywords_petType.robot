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

Click Menu_petType
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Verify Page_petType Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/h2
    Page Should Contain                     Pet Types


Click Button_petType_add
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]

Verify Inputfield_newPetType
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    Page Should Contain                     New Pet Type


Input New Pet Type Text
    [Arguments]                         ${SEARCH_TERM}
    Input Text                          id:name             ${SEARCH_TERM}


Click Button_PetType_save
    Click Element                       xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/form/div[2]/div/button
    Sleep                               1

Click Element Enter
    Click Element                       xpath://*[@id="name"]               ENTER

End Web Test
    Close Browser