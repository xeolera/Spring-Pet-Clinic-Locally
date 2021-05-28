package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import java.util.HashSet;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {
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
    @Tag("GD-489")
    @DisplayName("Test to get the users username")
    void testGetUsername() {
        User testU = new User();                                         // TestCode
        testU.setUsername("Jeff");                                       // TestCode
        Assertions.assertEquals("Jeff", testU.getUsername());   // Assertions & CUT
    }

    @Test
    @Tag("GD-490")
    @DisplayName("Test to set the users username")
    void testSetUsername() {
        User testU = new User();                                         // TestCode
        testU.setUsername("Jeff");                                       // CUT
        Assertions.assertEquals("Jeff", testU.getUsername());   // Assertions
    }

    @Test
    @Tag("GD-491")
    @DisplayName("Test to get the users password")
    void testGetPassword() {
        User testU = new User();                                         // TestCode
        testU.setPassword("secretPassword");                             // TestCode
        Assertions.assertEquals("secretPassword", testU.getPassword());  // Assertions & CUT
    }

    @Test
    @Tag("GD-492")
    @DisplayName("Test to set the users password")
    void testSetPassword() {
        User testU = new User();                                         // TestCode
        testU.setPassword("secretPassword");                             // CUT
        Assertions.assertEquals("secretPassword", testU.getPassword());  // Assertions
    }

    @Test
    @Tag("GD-493")
    @DisplayName("Test to get the boolean if user is enabled")
    void testGetEnabled() {
        User testU = new User();                                         // TestCode
        testU.setEnabled(true);                                          // TestCode
        Assertions.assertTrue(testU.getEnabled());                       // Assertions & CUT
    }

    @Test
    @Tag("GD-494")
    @DisplayName("Test to set the boolean enabled at user")
    void testSetEnabled() {
        User testU = new User();                                         // TestCode
        testU.setEnabled(false);                                         // CUT
        Assertions.assertFalse(testU.getEnabled());                      // Assertions
    }

    @Test
    @Tag("GD-495")
    @DisplayName("Test to get the roles of the user")
    void testGetRoles() {
        User testU = new User();                                         // TestCode
        assertNull(testU.getRoles());                                    // Assertions & CUT
    }

    @Test
    @Tag("GD-496")
    @DisplayName("Test to set roles to a user")
    void testSetRoles() {
        User testU = new User();                                         // TestCode
        Set<Role> uRoles = new HashSet<>();                              // TestCode
        Role role1 = new Role();                                         // TestCode
        role1.setName("Admin");                                          // TestCode
        Role role2 = new Role();                                         // TestCode
        role2.setName("Intern");                                         // TestCode
        uRoles.add(role1);                                               // TestCode
        uRoles.add(role2);                                               // TestCode
        testU.setRoles(uRoles);                                          // CUT
        Set<Role> newSet = testU.getRoles();                             // TestCode
        Role roo = newSet.stream().filter(role1::equals).findFirst().get(); // TestCode
        // item->item.equals(theItemYouAreLookingFor) can be shortened to theItemYouAreLookingFor::equals
        Assertions.assertEquals("Admin", roo.getName());        // Assertions
    }
    @Test
    @Tag("GD-497")
    @DisplayName("Test for adding a role to the user")
    void testAddRole() {
        User testU = new User();                                         // TestCode
        Role role1 = new Role();                                         // TestCode
        role1.setName("Admin");                                          // TestCode
        testU.addRole("Admin");                                 // CUT
        Set<Role> uRoles = testU.getRoles();                             // TestCode
        Assertions.assertEquals(1,uRoles.size());               // Assertions
    }
}
