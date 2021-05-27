--English--

This github is made for the Petclinic project, for group D in ITHS-software testing class of 2020. 

The workflow for this github is that either branch is used for uploading changes that after each subtask is up to date and double checked they are merged into the main branch. The reason for using github for this is to coordinate the project between all the members of the project, considering the circumstances right now, using an online solution for sharing the files was needed but considering all the functions found in github it would very likely have been used either way. 

The postman branch is used for uploading API-tests to the project page which is being developed using postman, hence the choice of the name. 

The next branch is called Robot_D where the webpage tests are being made; those tests are being made in PyCharm and ran using the IntelliBot plugin to run the test cases while the name choice follows the above pattern.

The final branch is jUnit which are jUnit test developed with IntelliJ using the programming language of java. 

The main branch is where the Jenkins files are which are used for running all the tests together using Jenkins, mostly using the server we have gotten access to from our project owners but also local ones. We decided to use 3 different Jenkins files to test different things; the first one is for testing the most essential test cases in all of the test areas. The second is for more odd inputs such as numbers outside the expected intervals and symbols that are not expected such as number in names. The final jenkinsfile is testing a full run-through of the webpage of creating an owner, pet linked to said owner and booking a visit to a veterinary on the webpage. 

 
-- Svenska --

Denna Github är gjorde för Petclinic projektet, denna är för grupp D i mjukvarutestarna 2020 på ITHS.  

Vi har 3 olika grenar i projektet, som används för olika delar av projektet och sedan sammanfogas med huvudgrenen. Valet att använda github blev mer givet på grund av samhällssituation som är just nu som kräver en gemensam arbetsyta online för att dela filer med samtliga gruppmedlemmar, men med tanke på alla funktioner som github har att erbjuda så hade den med största sannolikhet varit valet även under normala förutsättningar. 

Våra tre olika grenar börjar med Postman som används för att göra API-tester i programmet Postman, vilket vi valde att använda som namn på grenen för att hålla det tydligt vad som tillhör vad. 

Den andra grenen är Robot_D som används för robottesterna som provar webbplatsens olika funktioner genom roboten intellibot som är ett plugin till PyCharm som har varit vår valda utvecklingsmiljö för dessa tester. 

Den sista grenen är jUnit som är tester skrivna i java genom att använda IntelliJ. 

Main är huvudgrenen, där har vi jenkinsfiler som används tillsammans med butlerprogrammet Jenkins som automatiskt genomför våra tester med jämna mellanrum samt när vi väljer att manuellt köra testerna. Vi har 3 olika jenkinsfiler, den första används för att köra de mest nödvändiga testerna i samtliga testområden. Den andra jenkinsfilen kör tester som är mer lustiga, i det inkluderas att mata in tecken som inte förväntas samt siffror utanför det förväntade intervallen. Den sista är för att prova en fullständig genomkörning av att skapa en ägare, ett tillhörande husdjur och boka en tid för detta husdjur hos en veterinär på hemsidan. 
