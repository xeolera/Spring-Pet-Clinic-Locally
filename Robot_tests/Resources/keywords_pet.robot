*** Keywords ***
Begin Web Test

    Open browser                            about:blank   ${BROWSER}
    Maximize Browser Window
    Go to                                   ${URL}

Load Page
    Go to                                  ${URL}
Verify Page Loaded
    Wait Until Page Contains        SpringPetclinicAngular



Given when user has access to the web page
    Wait until page contains        SpringPetclinicAngular


When a user adds a pet
    Click element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[4]/a/span[2]
    click element                   xpath://html/body/app-root/app-pettype-list/div/div/div/button[2]
    input text                      xpath://*[@id="name"]   Lamm



And user clicks on “Save pet”
    Click element                   xpath://div/button[contains(text(), 'Save')]










End Web Test
  Close Browser
