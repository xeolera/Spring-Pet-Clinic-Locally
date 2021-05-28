package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import java.util.*;

class PetTest {
    @BeforeAll
    static void setup() {
        System.out.println("Starting testsuite");
    }

    @BeforeEach
    void setupEach(TestInfo testInfo) {
        System.out.println("Test starts - " + testInfo.getDisplayName() + " " +  testInfo.getTags());
    }

    @AfterEach
    void tearDownEach(TestInfo testInfo) {
        System.out.println("Closing test - " + testInfo.getDisplayName() + " " + testInfo.getTags());
    }

    @AfterAll
    static void tearDown() {
        System.out.println("Closing testsuite");
    }

    @Test
    @Tag("GD-479")
    @DisplayName("Test to set pet's birth date")
    void testSetBirthDate() {
        Pet testP = new Pet();                      //TestCode
        Calendar c1 = Calendar.getInstance();       //TestCode
        c1.set(Calendar.MONTH, 04);                 //TestCode
        c1.set(Calendar.DATE, 12);                  //TestCode
        c1.set(Calendar.YEAR, 2021);                //TestCode
        Date testBDate = c1.getTime();              //TestCode

        testP.setBirthDate(testBDate);              //CUT
        Date expectedDate = testBDate;              //TestCode
        Date actualDate = testP.getBirthDate();     //TestCode
        Assertions.assertEquals(expectedDate, actualDate);          //Assertions

        c1.set(Calendar.MONTH, 07);                 //TestCode
        testBDate = c1.getTime();                   //TestCode
        expectedDate = testBDate;                   //TestCode
        Assertions.assertNotEquals(expectedDate, actualDate);       //Assertions
    }

    @Test
    @Tag("GD-480")
    @DisplayName("Test to get pet's birth date")
    void testGetBirthDate() {
        Pet testP = new Pet();
        Calendar c1 = Calendar.getInstance();       //TestCode
        c1.set(Calendar.MONTH, 04);                 //TestCode
        c1.set(Calendar.DATE, 12);                  //TestCode
        c1.set(Calendar.YEAR, 2021);                //TestCode
        Date testBDate = c1.getTime();              //TestCode
        testP.setBirthDate(testBDate);              //TestCode

        Date expectedDate = testBDate;              //TestCode
        Date actualDate = testP.getBirthDate();     //CUT

        Assertions.assertEquals(expectedDate, actualDate);        //Assertions
    }

    @Test
    @Tag("GD-481")
    @DisplayName("Test to get pet's pet type")
    void testGetType() {
        Pet testP = new Pet();                      //TestCode
        PetType testPT = new PetType();             //TestCode
        testPT.setName("rodent");                   //TestCode
        testP.setType(testPT);                      //TestCode
        PetType actual = testP.getType();           //CUT
        PetType expected = testPT;                  //TestCode
        Assertions.assertEquals(expected, actual);  //Assertions
    }

    @Test
    @Tag("GD-482")
    @DisplayName("Test to set pet's pet type")
    void testSetType() {
        Pet testP = new Pet();                      //TestCode
        PetType testPT = new PetType();             //TestCode
        testPT.setName("rodent");                   //TestCode
        testP.setType(testPT);                      //CUT
        PetType actual = testP.getType();           //TestCode
        PetType expected = testPT;                  //TestCode
        Assertions.assertEquals(expected, actual);  //Assertions
    }

    @Test
    @Tag("GD-483")
    @DisplayName("Test to get pet's owner")
    void testGetOwner() {
        Pet testP = new Pet();                      //TestCode
        Owner testO = new Owner();                  //TestCode
        testP.setOwner(testO);                      //TestCode
        Owner expected = testO;                     //TestCode
        Owner actual = testP.getOwner();            //CUT
        Assertions.assertEquals(expected, actual);  //Assertions
    }

    @Test
    @Tag("GD-484")
    @DisplayName("Test to set pet's owner")
    void testSetOwner() {
        Pet testP = new Pet();                      //TestCode
        Owner testO = new Owner();                  //TestCode
        testP.setOwner(testO);                      //CUT
        Owner expected = testO;                     //TestCode
        Owner actual = testP.getOwner();            //TestCode
        Assertions.assertEquals(expected, actual);  //Assertions
    }

    @Test
    @Tag("GD-485")
    @DisplayName("Test to get visits for a pet, internally")
    void testGetVisitsInternal() {
        Pet testP = new Pet();                                                  // TestCode
        Visit testV = new Visit();                                              // TestCode
        testV.setDescription("Check-up");                                       // TestCode
        testP.addVisit(testV);                                                  // TestCode
        Set<Visit> newSet = testP.getVisitsInternal();                          // CUT
        Visit visit = newSet.stream().filter(testV::equals).findFirst().get();  // TestCode
        Assertions.assertEquals("Check-up", visit.getDescription());    // Assertions
    }

    @Test
    @Tag("GD-486")
    @DisplayName("Test to set visits for a pet, internally")
    void testSetVisitsInternal() {
        Pet testP = new Pet();                                                  // TestCode
        Visit testV1 = new Visit();                                             // TestCode
        testV1.setDescription("Check-up");                                      // TestCode
        Visit testV2 = new Visit();                                             // TestCode
        testV2.setDescription("Vaccination");                                   // TestCode

        Set<Visit> testS = new HashSet<>();                                     // TestCode
        testS.add(testV1);                                                      // TestCode
        testS.add(testV2);                                                      // TestCode
        testP.setVisitsInternal(testS);                                         // CUT

        Set<Visit> actual = testP.getVisitsInternal();                          // TestCode

        Assertions.assertEquals(testS, actual);                                 // Assertions
    }

    @Test
    @Tag("GD-487")
    @DisplayName("Test to get all visit for a pet")
    void testGetVisits() {
        Pet testP = new Pet();                                                  // TestCode
        Visit testV = new Visit();                                              // TestCode
        testV.setDescription("Check-up");                                       // TestCode
        testP.addVisit(testV);                                                  // TestCode
        List<Visit> allVisit = testP.getVisits();                               // CUT
        Assertions.assertEquals("Check-up", allVisit.get(0).getDescription());  // Assertions
    }

    @Test
    @Tag("GD-488")
    @DisplayName("Test to add a visit for a pet")
    void testAddVisit() {
        Pet testP = new Pet();                                                  // TestCode
        Visit testV = new Visit();                                              // TestCode
        testV.setDescription("Check-up");                                       // TestCode
        testP.addVisit(testV);                                                  // CUT
        List<Visit> allVisit = testP.getVisits();                               // TestCode
        Assertions.assertEquals("Check-up", allVisit.get(0).getDescription());  // Assertions
    }
}
