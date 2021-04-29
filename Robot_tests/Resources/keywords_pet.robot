*** Settings ***

Library   SeleniumLibrary


*** Keywords ***
Suite settings
  Set Selenium Implicit Wait  5 seconds


Begin Web Test
    Open browser                            about:blank   ${BROWSER}
    Maximize Browser Window
    Go to                                   ${URL}



Load Page
    Go to                                  ${URL}
Verify Page Loaded
    Wait Until Page Contains        SpringPetclinicAngular



Given when user has access to the web page and pettype exists
  Verify Page Loaded
  Click element               xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a
  Wait until page contains  Pet Types
  Click button                xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
  Input text                  xpath://*[@id="name"]  Cat
  Click button                xpath://*[@id="pettype"]/div[2]/div/button
  Wait until page contains element  xpath://input[contains(string, cat)]
And user locates the “owner list”-page
  click element               xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element               xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  wait until page contains    Owners

And user clicks on the chosen owner
  Wait Until Page Contains Element    xpath://table/tbody/tr[1]/td[1]/a
  click element               xpath://table/tbody/tr[1]/td[1]/a
  wait until page contains    Owner Information
And user clicks on “add new pet”
  click button                xpath://html/body/app-root/app-owner-detail/div/div/button[3]
  wait until page contains    Add Pet
And user input information to the pet
  input text                  xpath://*[@id="name"]  Micke
  input text                  xpath://html/body/app-root/app-pet-add/div/div/form/div[4]/div/input  2020/04/29
  Select From List By Label   xpath://*[@id="type"]  Cat
When user clicks on “Save pet”
  click button                xpath://html/body/app-root/app-pet-add/div/div/form/div[6]/div/button[2]
Then the user will have succesfully added a new pet to the chosen owner
  Wait until page contains    Micke



#_____________________________-

Given a user is on the landing page
  Verify Page Loaded

When the user adds a pet with numbers in the name field
    Click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]
    click element                   xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    input text                      xpath://*[@id="name"]   ${Petname2}

Then the pet should be added
   Click element                    xpath://*[@id="pettype"]/div[2]/div/button
   wait until page does not contain   New Pet Type
   ${pettype}=                      Get Value  xpath://*[@id="pettypes"]/tbody/tr[last()]/td/input
   Should be equal                  ${pettype}    ${Petname2}
End Web Test
  close all browsers
