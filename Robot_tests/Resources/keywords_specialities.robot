*** Settings ***
*** Keywords ***
Begin Web Test
    Open browser                     ${URL}    ${BROWSER}
    Set selenium timeout             5

Access Web Page & Verify Home Page Loaded
     Wait until Page Contains          Welcome to Petclinic

User Clicks Menu && Specialties Page Loaded
      page should contain               Specialties
      click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[5]/a/span[2]
      Wait until Page Contains          Name

User Clicks Add && Specialties Division Loaded
      click button                       xpath://html/body/app-root/app-specialty-list/div/div/div/button[2]
      Wait until Page Contains           New Specialty

Input Specialty name && Clicks on Save
       Set selenium speed                 1
       Wait Until Page Contains Element   //input[@name="name"]
       Input Text                         //input[@name="name"]    Pediatric
       Click Element                      xpath://html/body/app-root/app-specialty-list/div/div/div[1]/app-specialty-add/div/div/form/div[2]/div/button

System shows the added Specialties
       page should contain               Specialties
       Wait until Page Contains          Specialties

System display the existing specialties
       page should contain               Specialties
       Wait until Page Contains          Specialties

End Web Test
       Close Browser







