package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

class NamedEntityTest {
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
    @Tag("GD-457")
    @DisplayName("Be able to fetch the name as expected")
    //Arrange
    public void testGetName() {
        NamedEntity entity = new NamedEntity();
        String expected = "Jyoti";
        //Act
        entity.setName("Jyoti");
        //Assert
        Assertions.assertEquals(expected, entity.getName());
    }
    @Test
    @Tag("GD-459")
    @DisplayName("Be able to return the data type is  a string")
    //Arrange
    public void testToString() {
        NamedEntity obj1=new NamedEntity();
        String expected = "Jyoti";
        //Act
        obj1.setName("Jyoti");
        //Assert
        Assertions.assertEquals(expected, obj1.toString());
    }
}
