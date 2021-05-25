*** Settings ***
*** Keywords ***


Given User on the Infotiv PetClinic page
     Go to Web Page

When User select the Owners with All
     click element                              xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a/span
     click element                              xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a/span
     Sleep                                      0.2
     Wait until Page Contains Element           xpath://html/body/app-root/app-owner-list/div/div/h2
     Page Should Contain                        Owners
     click element                              xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[5]/td[1]/a
     page should contain                        Pets and Visits
     #Removed 2 keywords here since they were repeated keywords - might be causing some trouble for jenkins.
     #Added Sleep 0.2 to make sure the page loads and not being rushed to find the Click Element since sometimes it jumps over it.

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
     #page should not contain                    2021/05/08
     #Same here, you can use another keyword from RFW to check if the element page text should contain text or not. And still make it pass :)
     #page should not contain                    I need to visit

