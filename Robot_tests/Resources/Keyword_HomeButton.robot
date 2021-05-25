*** Settings ***
*** Keywords ***

Given User on the Infotiv PetClinic page
     Go to Web Page

When User select the Owners with All option
     click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a/span
     Wait until Page Contains          Owners

Then System shows Owners information with Home button and Add Owner button
     Page should contain element       xpath://html/body/app-root/app-vet-list/div/div/div/button[1]

When User select the VETERINARIANS with All
     click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/a
     Mouse Down                        xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/ul/li[1]/a/span[2]
     click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/ul/li[1]/a/span
     Wait until Page Contains          Veterinarians

Then System shows Veterinarians information with Home button and Add button
     Wait until Page Contains          Veterinarians
     click element                     xpath://html/body/app-root/app-vet-list/div/div/div/button[1]

When User select the PET TYPES
      Wait until Page Contains         Pet Types
      click element                    xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]

Then System shows Pet Types information with Home button and Add button
     Wait until Page Contains          Pet Types
     click element                     xpath://html/body/app-root/app-pettype-list/div/div/div/button[1]

When User select the SPECIALITIES with All
     Wait Until Page Contains Element    xpath=(//span)[17]
     Click Element                       xpath=(//span)[17]

Then System shows Specialities information with Home button and Add button
    Wait Until Page Contains Element    xpath=(//button[@class="btn btn-default"])[7]
    #Page should contain                   Specialties

