*** Settings ***

*** Keywords ***

Go to PetClinic && Click Menu && Verify Page
    Go to Web Page
    Click Menu_petType
    Verify Page_petType Loaded

Click Menu_petType
    Click Element                           xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Verify Page_petType Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/h2
    Page Should Contain                     Pet Types

Click Button Add && Verify Input Field Visible
    Click Button_petType_add
    Verify Inputfield_newPetType

Click Button_petType_add
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]

Verify Inputfield_newPetType
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/h2
    Page Should Contain                     New Pet Type

Click Button_petType_edit_ID5
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[6]/td[2]/button[1]

Verify Page_petType_EditPetTypePage Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-edit/div/div/h2
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/div/input
    Page Should Contain                     Edit Pet Type

Click Button && Verify Edit and Input Field Page Loaded
    Click Button_petType_edit_ID5
    Verify Page_petType_EditPetTypePage Loaded

Edit ID 1 && Verify Page
    Click Button_petType_Edit_ID1
    Verify Page_petType_EditPetTypePage Loaded

Edit ID 2 && Verify Page
    Click Button_petType_Edit_ID2
    Verify Page_petType_EditPetTypePage Loaded

Edit ID 3 && Verify Page
    Click Button_petType_Edit_ID4
    Verify Page_petType_EditPetTypePage Loaded

Edit ID 4 && Verify Page
    Click Button_petType_Edit_ID4
    Verify Page_petType_EditPetTypePage Loaded

Edit ID 6 && Verify Page
    Click Button_petType_Edit_ID6
    Verify Page_petType_EditPetTypePage Loaded

Click Button_petType_Edit_ID1
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[1]/td[2]/button[1]

Click Button_petType_Edit_ID2
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[2]/td[2]/button[1]

Click Button_petType_Edit_ID3
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[3]/td[2]/button[1]

Click Button_petType_Edit_ID4
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[4]/td[2]/button[1]

Click Button_petType_Update
    Click Element                           xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/button[1]

Click Button Update && Verify Pet Type Page Loaded
    Click Button_petType_Update
    Verify Page_petType Loaded

Click Button_petType_Cancel
    Click Element                           xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/button[2]

Click Button Cancel && Verify Page Loaded
    Click Button_petType_Cancel
    Verify Page_petType Loaded

Click Button_petType_Delete_ID1
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[1]/td[2]/button[2]

Delete PetType && Verify Page Loaded
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[1]/td[2]/button[1]
    Input Text                              id:name             ${search_term}
    Click Element                           xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/button[1]
    Verify Page_petType Loaded
    Click Button_petType_Delete_ID1
    Verify Page_petType Loaded

Click Button_petType_Delete_ID2
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[2]/td[2]/button[2]

Edit Pet Types Names For ID 2
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[2]/td[2]/button[1]
    Input Text                              id:name             ${search_term}
    CLick Element                           xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/button[1]
    Verify Page_petType Loaded

Edit Pet Types Names For ID 3
    [Arguments]                             ${search_term}
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[3]/td[2]/button[1]
    Input Text                              id:name             ${search_term}
    CLick Element                           xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/button[1]
    Verify Page_petType Loaded

Delete PetType_ID2 && Verify Page Loaded
    Click Button_petType_Delete_ID2
    Verify Page_petType Loaded

Input New Pet Type Text
    [Arguments]                             ${search_term}
    Input Text                              id:name             ${search_term}

Input Blank Pet Type
    Input Text                              id:name             ${EMPTY}

Check If Input Is Not Blank
    Element Text Should Not Be              xpath://html/body/app-root/app-pettype-edit/div/div/form/div[2]/div/div/input         false

Input Blank && Check Update And Verify Page
    Input Blank Pet Type
    Check If Input Is Not Blank
    Click Button_petType_Update

Click Button_PetType_save
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/form/div[2]/div/button

Click Element Enter
    Click Element                           xpath://*[@id="name"]               ENTER

Pet Type Saves and Page Loads & Verifies
    Click Button_PetType_save
    Verify Page_petType Loaded
