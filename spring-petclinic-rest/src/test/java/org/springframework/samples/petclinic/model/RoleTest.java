package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

class RoleTest {
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
    @Tag("GD-504")
    @DisplayName("Test to get the user from the role")
    void testGetUser() {
        Role testR = new Role();                        // TestCode
        User testU = new User();                        // TestCode
        testR.setUser(testU);                           // TestCode
        Assertions.assertEquals(testU, testR.getUser());  //Assertions & CUT
    }

    @Test
    @Tag("GD-505")
    @DisplayName("Test to set the user for the role")
    void TestSetUser() {
        Role testR = new Role();                        // TestCode
        User testU = new User();                        // TestCode
        testR.setUser(testU);                           // CUT
        Assertions.assertEquals(testU, testR.getUser());  //Assertions
    }

    @Test
    @Tag("GD-506")
    @DisplayName("Test to get the name from the role")
    void testGetName() {
        Role testR = new Role();                        // TestCode
        testR.setName("Admin");                         // TestCode
        Assertions.assertEquals("Admin", testR.getName()); // Assertions & CUT
    }

    @Test
    @Tag("GD-507")
    @DisplayName("Test to set the name for the role")
    void testSetName() {
        Role testR = new Role();                        // TestCode
        testR.setName("Admin");                         // CUT
        Assertions.assertEquals("Admin", testR.getName()); // Assertions
    }
}
