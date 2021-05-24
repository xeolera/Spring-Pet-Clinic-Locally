*** Settings ***

*** Variables ***

#PetClinic General Info
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL_VETERINARY}   http://localhost:4200/petclinic/vets

#First name
${OWNER_FIRSTNAME_A}          Jeff
${OWNER_FIRSTNAME_B}          Carola
${OWNER_FIRSTNAME_C}          Bert
#Last name
${OWNER_LASTNAME_A}          Jeffson
${OWNER_LASTNAME_B}          Gynning
${OWNER_LASTNAME_C}          Karlsson
#Address
${OWNER_ADDRESS_A}           Andralånggatan 5
${OWNER_ADDRESS_B}           Hjortmossegatan 8
${OWNER_ADDRESS_C}           Trängselvägen 77
#City
${OWNER_CITY_A}              Göteborg
${OWNER_CITY_B}              Trollhättan
${OWNER_CITY_C}              Härnösand
#Telephone
${OWNER_TELEPHONE_A}        0711231231
${OWNER_TELEPHONE_B}        0765505252
${OWNER_TELEPHONE_C}        0749876543
#Pet Name
${PET_NAME_A}               Ergo
${PET_NAME_B}               Tirius
${PET_NAME_C}               Klempa
#Pet Birth Date
${PET_BIRTHDATE_A}          2020/02/17
${PET_BIRTHDATE_B}          2020/06/03
${PET_BIRTHDATE_C}          2017/12/24
#Pet Visits
${PET_VISITDATE_A}          2021/05/27
${PET_VISITDATE_B}          2021/07/30
${PET_VISITDATE_C}          2021/06/02

*** Keywords ***
Begin Web Test
    Open browser                     about:blank             ${BROWSER}
    Set selenium timeout             10

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                           ${URL}

Verify Page Loaded
    ${LINK_TEXT}                    Get Title
    Should Be Equal                 ${LINK_TEXT}      SpringPetclinicAngular
    Page Should Contain             Welcome to Petclinic

End Web Test
    Close Browser