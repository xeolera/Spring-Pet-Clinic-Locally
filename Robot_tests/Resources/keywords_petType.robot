*** Settings ***

*** Keywords ***

Go to PetClinic && Click Menu && Verify Page
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded

Click Menu_petType
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Verify Page_petType Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/h2
    Page Should Contain                     Pet Types

Click Button Add && Verify Input Field Visible
    Click Button_petType_add
    Verify Inputfield_newPetType

Click Button_petType_add
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]

Verify Inputfield_newPetType
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    Page Should Contain                     New Pet Type

Input New Pet Type Text
    [Arguments]                         ${search_term}
    Input Text                          id:name             ${search_term}

Click Button_PetType_save
    Click Element                       xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/form/div[2]/div/button

Click Element Enter
    Click Element                       xpath://*[@id="name"]               ENTER

Pet Type Saves and Page Loads & Verifies
    Click Button_PetType_save
    Verify Page_petType Loaded

