package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import javax.persistence.TableGenerator;

import static org.junit.jupiter.api.Assertions.*;

class PersonTest {
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
    @Tag("GD-448")
    @DisplayName("Test to get person's first name")
    void testGetFirstName() {
        Person testP = new Person();                        //TestCode
        testP.setFirstName("Ellen");                        //TestCode
        String expectedName = "Ellen";                      //TestCode
        String actualName = testP.getFirstName();           //CUT
        Assertions.assertEquals(expectedName, actualName);  //Assertions
    }

    @Test
    @Tag("GD-449")
    @DisplayName("Test to set person's first name")
    void testSetFirstName() {
        Person testP = new Person();                        //TestCode
        String expectedName = "Jennie";                     //TestCode
        testP.setFirstName("Jennie");                       //CUT
        String actualName = testP.getFirstName();           //TestCode
        Assertions.assertEquals(expectedName, actualName);  //Assertions
    }

    @Test
    @Tag("GD-450")
    @DisplayName("Test to get person's last name")
    void testGetLastName() {
        Person testP = new Person();                        //TestCode
        testP.setLastName("Krazze");                        //TestCode
        String expectedName = "Krazze";                     //TestCode
        String actualName = testP.getLastName();            //CUT
        Assertions.assertEquals(expectedName, actualName);  //Assertions
    }

    @Test
    @Tag("GD-451")
    @DisplayName("Test to set person's last name")
    void testSetLastName() {
        Person testP = new Person();                        //TestCode
        String expectedName = "Krazze";                     //TestCode
        testP.setLastName("Krazze");                        //CUT
        String actualName = testP.getLastName();            //TestCode
        Assertions.assertEquals(expectedName, actualName);  //Assertions
    }
}
