package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

class BaseEntityTest {
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
    @Tag("GD-453")
    @DisplayName("To test getId is as expected")

    //Arrange
    public void testGetId() {
        BaseEntity entity = new BaseEntity();
        Integer expected = 10;
        //Act
        entity.setId(10);
        //Assert
        Assertions.assertEquals(expected, entity.getId());
        }
    @Test
    @Tag("GD-454")
    @DisplayName(" To test getId is null")
    //Arrange
    public void testGetIdNull() {
        BaseEntity entity = new BaseEntity();
        //Act
        Integer expected = null;
        //Assert
        Assertions.assertEquals(expected, entity.getId());
    }

    @Test
    @Tag("GD-456")
    @DisplayName(" To test the isNew returns a boolean")
        //Arrange
    void testIsNew() {
        BaseEntity obj1 = new BaseEntity();
        obj1.setId(null);
        //Act
        Boolean actual = obj1.isNew();
        //Assertions
        Assertions.assertEquals(true, actual);
    }
   }

