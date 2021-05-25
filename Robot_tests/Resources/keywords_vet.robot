*** Settings ***

*** Keywords ***
Given when Im on the landing page
            Go to Web Page
When l click on veterinarians

            Click element                  xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/a

And delete a specific veterinar

            Click element                  xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/ul/li[1]/a/span[2]

Then he should be deleted

            Click Element                                xpath://*[@id="vets"]/tbody/tr[1]/td[3]/button[2]

            #Tear Down

            Click element                    xpath://html/body/app-root/app-vet-list/div/div/div/button[2]
            Input Text                       xpath://*[@id="firstName"]    James
            Input Text                       xpath://*[@id="lastName"]     Carter
            Click element                   xpath://*[@id="vet"]/div[5]/div/button[2]