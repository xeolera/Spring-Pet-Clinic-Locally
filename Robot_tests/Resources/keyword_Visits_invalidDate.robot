*** Settings ***
*** Keywords ***
Begin Web Test
    Open browser                     ${URL}    ${BROWSER}
    Set selenium timeout             10

Given User on the Infotiv PetClinic page
     Wait until Page Contains          Welcome to Petclinic

When User select the Owners with All
     click element                              xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a/span
     Mouse Down                                 xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a/span
     click element                              xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a/span
     Page should contain                        Owners
     Wait until Page Contains                   Owners
     click element                              xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[5]/td[1]/a
     page should contain                        Pets and Visits

And Click on Addnew and User enters Invalid Dates and Description
     Wait until Page Contains                   Owner Information
     page should contain                        Owner Information
     Click Element                              xpath=(//button[@class="btn btn-default"])[6]
     Wait Until Page Contains Element           //input[@name="date"]
     Input Text                                 xpath://input[@name="date"]                                                      2021/05/08
     input text                                 xpath://html/body/app-root/app-visit-add/div/div/form/div[1]/div[2]/div/input    I need to visit
     click button                               xpath://html/body/app-root/app-visit-add/div/div/form/div[2]/div/button[2]
Then System should not allow to add visits
     Wait until Page Contains                   Owner Information
     page should contain                        Owner Information
     page should not contain                    2021/05/08
     page should not contain                    I need to visit

End Web Test
   Close All Browsers
