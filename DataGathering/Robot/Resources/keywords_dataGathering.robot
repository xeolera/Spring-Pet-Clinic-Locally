*** Settings ***

*** Keywords ***

Click Menu PetClinic_Owners && Owner_AddNew
    Go to Web Page
    Click Element                           xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
    Click Element                           xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[2]/a/span[2]

Click Menu PetClinic_PetType
    Click Element                           xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Verify Pet Types Page Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pettype-list/div/div/h2
    Page Should Contain                     Pet Types

User Clicks Pet Type Page && Page is Verified
    Go to Web Page
    Click Menu PetClinic_PetType
    Verify Pet Types Page Loaded

User Clicks Button "Add"
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]

Input Field Pops Up
    Wait Until Page COntains Element        xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/h2
    Page Should Contain                     New Pet Type

User Clicks Button "Add" && Input Field Pops Up
    User Clicks Button "Add"
    Input Field Pops Up

Input New Pet Type
    [Arguments]                             ${search_term}
    Input Text                              id:name             ${search_term}

Click Button "Save"
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/div[1]/app-pettype-add/div/div/form/div[2]/div/button

User Saves New Pet && Pet Type Page Loads
    Click Button "Save"
    Verify Pet Types Page Loaded

Click Button "Delete" On Pet Oxe
    Click Element                           xpath://html/body/app-root/app-pettype-list/div/div/table/tbody/tr[6]/td[2]/button[2]

User Succesfully Deletes Oxe && Pet Type Page Loads
    Click Button "Delete" On Pet Oxe
    Verify Pet Types Page Loaded

Verify New Owner Page Loaded
    Wait Until Page Contains Element        xpath:/html/body/app-root/app-owner-add/div/div/h2
    Page Should Contain                     New Owner

User Adds New Owner && Page is Verified
    Go to Web Page
    Click Menu PetClinic_Owners && Owner_AddNew
    Verify New Owner Page Loaded

Input Owner firstName
    [Arguments]                             ${search_term}
    Input Text                              id:firstName             ${search_term}

Input Owner lastName
    [Arguments]                             ${search_term}
    Input Text                              id:lastName              ${search_term}

Input Owner address
    [Arguments]                             ${search_term}
    Input Text                              id:address               ${search_term}

Input Owner city
    [Arguments]                             ${search_term}
    Input Text                              id:city                  ${search_term}

Input Owner telephone
    [Arguments]                             ${search_term}
    Input Text                              id:telephone             ${search_term}

Click Button "Add Owner"
    Click Element                           xpath://html/body/app-root/app-owner-add/div/div/form/div[7]/div/button[2]

Verify Owner Page Loaded
    Wait Until Page Contains Element        xpath:/html/body/app-root/app-owner-list/div/div/h2
    Page Should Contain                     Owners

User Clicks "Add Owner" && Owner Page Verifies
    Click Button "Add Owner"
    Verify Owner Page Loaded

Click Owner "Lill Babz"
    Click Element                           xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[11]/td[1]/a

Verify Owner Information Page Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-detail/div/div/h2[1]
    Page Should Contain                     Owner Information


User Click On "Lill Babz" Owner && Owner Information Page Verifies
    Click Owner "Lill Babz"
    Verify Owner Information Page Loaded

Click Button "Add New Pet"
     Click Element                          xpath://html/body/app-root/app-owner-detail/div/div/button[3]

Verify Add Pet Page Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-pet-add/div/div/h2
    Page Should Contain                     Add Pet

User Clicks Button "Add New Pet" && Add Pet Page Verifies
    Click Button "Add New Pet"
    Verify Add Pet Page Loaded

Input Add Pet Name
    [Arguments]                             ${search_term}
    Input Text                              id:name             ${search_term}

Input Birth Date
    [Arguments]                             ${search_term}
    Input Text                              xpath://html/body/app-root/app-pet-add/div/div/form/div[4]/div/input             ${search_term}

Chose Index Dropdown
    Click Element                           xpath://html/body/app-root/app-pet-add/div/div/form/div[5]/div/div/select
    Click Element                           xpath://html/body/app-root/app-pet-add/div/div/form/div[5]/div/div/select/option[1]

User Inputs Birthdate && Chooses "Cat" As Pet Type
    Chose Index Dropdown

Click Button "Save Pet"
    Click Element                           xpath://html/body/app-root/app-pet-add/div/div/form/div[6]/div/button[2]

User Clicks on "Save Pet" && Owner Information Page Loads
    Click Button "Save Pet"
    Verify Owner Information Page Loaded

Click Button "Delete Pet"
    Click Element                           xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list[1]/table/tr/td[1]/dl/button[2]

User Deletes Pet && Owner Information Page Loads
    Click Button "Delete Pet"
    Verify Owner Information Page Loaded

Click Button "Edit Owner"
    Click Element                           xpath://html/body/app-root/app-owner-detail/div/div/button[2]

Verify Edit Owner Page Loaded
    Wait Until Page Contains Element        xpath://html/body/app-root/app-owner-edit/div/div/h2
    Page Should Contain                     Edit Owner

User Click "Edit Owner" && Owner Page Loaded
    Click Button "Edit Owner"
    Verify Edit Owner Page Loaded

Edit Last Name Element Text
    [Arguments]                             ${search_term}
    Input Text                              xpath://html/body/app-root/app-owner-edit/div/div/form/div[3]/div/input             ${search_term}

Click Button "Update Owner"
    Click Element                           xpath://html/body/app-root/app-owner-edit/div/div/form/div[7]/div/button[2]

User Updates Owner Last Name && Owner Information Page Loads
    Click Button "Update Owner"
    Verify Owner Information Page Loaded

