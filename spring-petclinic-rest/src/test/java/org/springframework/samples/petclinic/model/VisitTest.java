package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import java.util.Calendar;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

class VisitTest {
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
    @Tag("GD-498")
    @DisplayName("Test to get date for visit")
    void testGetDate() {
        Visit testV = new Visit();  //The constructor set todays date
        Date testD = new Date();    //TestCode
        Assertions.assertEquals(testD,testV.getDate());  // Assertions & CUT
    }

    @Test
    @Tag("GD-499")
    @DisplayName("Test to set date for visit")
    void testSetDate() {
        Visit testV = new Visit();
        Calendar c1 = Calendar.getInstance();       //TestCode
        c1.set(Calendar.MONTH, 07);                 //TestCode (month 0 = jan)
        c1.set(Calendar.DATE, 12);                  //TestCode
        c1.set(Calendar.YEAR, 2021);                //TestCode
        Date testD = c1.getTime();                  //TestCode
        testV.setDate(testD);                       // CUT
        Assertions.assertEquals(testD,testV.getDate());  // Assertions
    }

    @Test
    @Tag("GD-500")
    @DisplayName("Test to get description for visit")
    void testGetDescription() {
        Visit testV = new Visit();                  //TestCode
        testV.setDescription("Check-up");           //TestCode
        Assertions.assertEquals("Check-up", testV.getDescription());  //Assertions & CUT
    }

    @Test
    @Tag("GD-501")
    @DisplayName("Test to set description for visit")
    void testSetDescription() {
        Visit testV = new Visit();                  //TestCode
        testV.setDescription("Check-up");           //CUT
        Assertions.assertEquals("Check-up", testV.getDescription());  //Assertions
    }

    @Test
    @Tag("GD-502")
    @DisplayName("Test to get the pet for a visit")
    void testGetPet() {
        Visit testV = new Visit();                  //TestCode
        Pet testP = new Pet();                      //TestCode
        testV.setPet(testP);                        //TestCode
        Assertions.assertEquals(testP, testV.getPet());  //Assertions & CUT
    }

    @Test
    @Tag("GD-503")
    @DisplayName("Test to set the pet for a visit")
    void testSetPet() {
        Visit testV = new Visit();                  //TestCode
        Pet testP = new Pet();                      //TestCode
        testV.setPet(testP);                        //CUT
        Assertions.assertEquals(testP, testV.getPet());  //Assertions
    }
}
