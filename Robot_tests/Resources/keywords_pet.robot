*** Settings ***
*** Keywords ***
Given when user has access to the web page and pettype exists

  Go to Web Page
  Click element               xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a
  Wait until page contains    Pet Types
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
#_____________________________________________________________________________________________________
Given a user is on the landing page
    Go to Web Page

When the user adds a pet with numbers in the name field
    Click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]
    click element                   xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    input text                      xpath://*[@id="name"]   ${Petname2}
Then the pet should be added
   Click element                    xpath://*[@id="pettype"]/div[2]/div/button
   wait until page does not contain   New Pet Type
   ${pettype}=                      Get Value  xpath://*[@id="pettypes"]/tbody/tr[last()]/td/input
   Should be equal                  ${pettype}    ${Petname2}
   #__________________________________________________________________________________________________
Given that user has access to "petclinic" site

  Go to Web Page
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  wait until element is visible   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]
  wait until page contains element        xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Owner Information
When user changes owner information and saves
  click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[2]
  wait until page contains        Update Owner
  input text                      xpath://*[@id="firstName"]    Johan
  input text                      xpath://*[@id="lastName"]     Svensson
  input text                      xpath://*[@id="address"]      Järntorgetsgatan 22
  input text                      xpath://*[@id="city"]         Göteborg
  input text                      xpath://*[@id="telephone"]    0311111111
  click button                    xpath://html/body/app-root/app-owner-edit/div/div/form/div[7]/div/button[2]
  wait until page contains        Owner Information
Then changes should reflect in "Owners" list
  click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[1]
  wait until page contains element        xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a  Johan Svensson
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[2]     Järntorgetsgatan 22
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[3]     Göteborg
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[4]     0311111111
   ## Teardown
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Owner Information
  click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[2]
  wait until page contains        Update Owner
  input text                      xpath://*[@id="firstName"]    George
  input text                      xpath://*[@id="lastName"]     Franklin
  input text                      xpath://*[@id="address"]      110 W. Liberty St.
  input text                      xpath://*[@id="city"]         New york
  input text                      xpath://*[@id="telephone"]    6085551023
  click button                    xpath://html/body/app-root/app-owner-edit/div/div/form/div[7]/div/button[2]
  wait until page contains        Owner Information
  #__________________________________________________________________________________________________
# Test update owner with special signs in name
Given that user has access to the "petclinic" site

    Go to Web Page
    click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
    wait until element is visible   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul
    click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]
    wait until page contains element        xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
    click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
    wait until page contains        Owner Information

When user changes owner information with special signs and saves
    click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[2]
    wait until page contains        Update Owner
    input text                      xpath://*[@id="firstName"]    ¤Johan¤
    input text                      xpath://*[@id="lastName"]     !Svensson!
    input text                      xpath://*[@id="address"]      Järntorgetsgatan 22
    input text                      xpath://*[@id="city"]         Göteborg
    input text                      xpath://*[@id="telephone"]    0311111111
    click button                    xpath://html/body/app-root/app-owner-edit/div/div/form/div[7]/div/button[2]
    wait until page contains        Owner Information

Then changes should reflect in the "Owners" list
  click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[1]
  wait until page contains element        xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a  ¤Johan¤ !Svensson!
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[2]     Järntorgetsgatan 22
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[3]     Göteborg
  element should contain          xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[4]     0311111111
   ## Teardown
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Owner Information
  click button                    xpath://html/body/app-root/app-owner-detail/div/div/button[2]
  wait until page contains        Update Owner
  input text                      xpath://*[@id="firstName"]    George
  input text                      xpath://*[@id="lastName"]     Franklin
  input text                      xpath://*[@id="address"]      110 W. Liberty St.
  input text                      xpath://*[@id="city"]         New york
  input text                      xpath://*[@id="telephone"]    6085551023
  click button                    xpath://html/body/app-root/app-owner-edit/div/div/form/div[7]/div/button[2]
  wait until page contains        Owner Information
  #------------------------------------------------------------------------------------------------------------
  # Change pet information
Given that user has access to petclinic site

   Go to Web Page
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  wait until page contains        Owners
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Pets and Visits
And user click on element edit pet
  click element                   xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[1]
when user changes pet information pet name
  input text                      xpath://*[@id="name"]      Lolo
  click element                   xpath://html/body/app-root/app-pet-edit/div/div/form/div[6]/div/button[2]
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
Then changes should reflect in the name field
  wait until page contains        Lolo
 # Tear down
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  wait until page contains        Owners
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[1]
  input text                      xpath://*[@id="name"]      Micke
  click element                   xpath://html/body/app-root/app-pet-edit/div/div/form/div[6]/div/button[2]
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  #_______________________________________________________________________________________________________________
  # Edit pet with empty name field
Given that im on the landing page
  Go to Web Page

When l edit a pet


  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  wait until page contains        Owners
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[1]
And leave the name filed empty

  input text                      xpath://*[@id="name"]                                            12345
  # Input Text förväntar sig text här. Det går inte att lämna fältet tomt. Det finns annan Robot Framework Keyword som kan testa ifall det är tomt som du kan kika på framöver.

Then an error should occur
  click element                   xpath://html/body/app-root/app-pet-edit/div/div/form/div[6]/div/button[2]
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
   # Tear down
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
  wait until page contains        Owners
  click element                   xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[1]/td[1]/a
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[1]
  input text                      xpath://*[@id="name"]      Micke
  click element                   xpath://html/body/app-root/app-pet-edit/div/div/form/div[6]/div/button[2]
  wait until page contains        Pets and Visits
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
  click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a
#-------------------------------------------
#Stefan added new keywords
Click Button "Add New Pet"
    Click Element                                    xpath://html/body/app-root/app-owner-detail/div/div/button[3]
Verify "Add Pet" Page Loaded
    Wait Until Page Contains Element                 xpath://html/body/app-root/app-pet-add/div/div/h2
    Page Should Contain                              Add Pet
User Clicks On "Add New Pet" && Add Pet Page Loads
    Click Button "Add New Pet"
    Verify "Add Pet" Page Loaded
User Inputs Name to the New Pet
    [Arguments]                                     ${search_term}
    Click Element                                   xpath://html/body/app-root/app-pet-add/div/div/form/div[3]/div/input
    Input Text                                      id:name                                       ${search_term}
User Inputs Birth Date to the New Pet
    [Arguments]                                     ${search_term}
    Click Element                                   xpath://html/body/app-root/app-pet-add/div/div/form/div[4]/div/input
    Input Text                                      name:birthDate                                       ${search_term}
Chose "Cat" From List
    Select From List By Label                       xpath://*[@id="type"]  cat
Click Button "Save Pet" on Add Pet Page
    Click Element                                   xpath://html/body/app-root/app-pet-add/div/div/form/div[6]/div/button[2]
User Chooses Type From List && Clicks Save Pet
    Chose "Cat" From List
    Click Button "Save Pet" on Add Pet Page
