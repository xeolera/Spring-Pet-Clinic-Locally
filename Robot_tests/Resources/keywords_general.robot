*** Settings ***

*** Variables ***

#PetClinic General Info
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL_VETERINARY}   http://localhost:4200/petclinic/vets

#First name
${OWNER_A_FIRSTNAME}          Jeff
${OWNER_B_FIRSTNAME}          Carola
${OWNER_C_FIRSTNAME}          Bert
#Last name
${OWNER_A_LASTNAME}          Jeffson
${OWNER_B_LASTNAME}          Gynning
${OWNER_C_LASTNAME}          Karlsson
#Pet Name
${PET_A_NAME}          Ergo
${PET_B_NAME}          Tirius
${PET_C_NAME}          Klempa
#Pet Birth Date
${PET_A_BIRTHDATE}          2020/02/17
${PET_B_BIRTHDATE}          2020/06/03
${PET_C_BIRTHDATE}          2017/12/24
#Pet Visits
${PET_A_VISIT}              2021/05/27
${PET_B_VISIT}              2021/07/30
${PET_C_VISIT}              2021/06/02

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