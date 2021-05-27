*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/keywords_general.robot

*** Keywords ***

Access Web Page && Verify Home Page Loaded

     Go to Web Page
     Wait Until Page Contains           Welcome to Petclinic

User Clicks Menu && Specialties Page Loaded
      page should contain               Specialties
      click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[5]/a/span[2]
      Wait until Page Contains          Name

User Clicks Add && Specialties Division Loaded
      click button                       xpath://html/body/app-root/app-specialty-list/div/div/div/button[2]
      Wait until Page Contains           New Specialty

Input Specialty name && Clicks on Save

       Wait Until Page Contains Element    //input[@name="name"]
       Input Text                          //input[@name="name"]    Pediatric

       Click Element                      xpath://html/body/app-root/app-specialty-list/div/div/div[1]/app-specialty-add/div/div/form/div[2]/div/button

System shows the added Specialties
       page should contain               Specialties
       Wait until Page Contains          Specialties

System display the existing specialties
       page should contain               Specialties
       Wait until Page Contains          Specialties

User Clicks Edit && Edit Specialty Loaded
    Click Button                        xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[1]/td[2]/button[1]
    Wait Until Page Contains            Edit Specialty

Input Specialty name
    [Arguments]                         ${search_term}
    Input Text                          id:name             ${search_term}

Abort edit && Verify Page
    Click Button                        xpath://html/body/app-root/app-specialty-edit/div/div/form/div[2]/div/button[2]
    Wait Until Page Contains Element         xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[1]/td[1]/input

User Clicks Save && Verify Save
    Click Button                        xpath://html/body/app-root/app-specialty-list/div/div/div[1]/app-specialty-add/div/div/form/div[2]/div/button
    Wait Until Page Contains Element         xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[4]/td[1]/input

User Clicks Update && Verify Update
    Click Button                        xpath://html/body/app-root/app-specialty-edit/div/div/form/div[2]/div/button[1]
    Wait Until Page Contains Element         xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[4]/td[1]/input

User Clicks Delete && Verify Delete
    Click Button                        xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[4]/td[2]/button[2]
    Wait Until Element Is Not Visible   xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[4]/td[1]/input

User Clicks Delete && Verify No Deletion
    Click Button                        xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[1]/td[2]/button[2]
    Wait Until Page Contains Element    xpath://html/body/app-root/app-specialty-list/div/div/table/tbody/tr[1]/td[1]/input
