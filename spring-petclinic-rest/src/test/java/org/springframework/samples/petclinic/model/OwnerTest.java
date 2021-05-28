package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import java.util.HashSet;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

public class OwnerTest {

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
    @Tag("GD-460")
    @DisplayName("Test to fetch  the address of owner as expected")

    //Arrange
    public void testGetAddress() {
        Owner owner = new Owner();
        String expected = "Stockholm";
        //Act
        owner.setAddress("Stockholm");
        //Assert
        Assertions.assertEquals(expected, owner.getAddress());
    }

    @Test
    @Tag("GD-462")
    @DisplayName("Test to get  the city of  the owner as expected")
    //Arrange
    public void testGetCity() {
        Owner owner = new Owner();
        String expected = "Göteborg";
        //Act
        owner.setCity("Göteborg");
        //Assert
        Assertions.assertEquals(expected, owner.getCity());
    }

    @Test
    @Tag("GD-464")
    @DisplayName("To test  the Telephone of  the owner as expected")
    //Arrange
    public void testGetTelephone() {
        Owner owner = new Owner();
        String expected = "11111111";
        //Act
        owner.setTelephone("11111111");
        //Assert
        Assertions.assertEquals(expected, owner.getTelephone());
    }

    @Test
    @Tag("GD-466")
    @DisplayName("To test to get the pet of the owner")
    //Arrange
    public void testGetPet() {
        Owner owner = new Owner();
        Pet pet = new Pet();
        String expected = "Booster";
        //Act
        owner.addPet(pet);
        pet.setName("Booster");
        //Assert
        Assertions.assertEquals(expected, pet.getName());
    }

    @Test
    @Tag("GD-470")
    @DisplayName("To test to set the pets internally of  the owner")
    //Arrange
    public void testSetPetsInternal() {
        Owner owner = new Owner();
        Pet pet = new Pet();
        pet.setName("Fish");
        Pet pet2 = new Pet();
        pet2.setName("Bird");
        Set<Pet> temp = new HashSet<>();
        //Act
        temp.add(pet);
        temp.add(pet2);
        owner.setPetsInternal(temp);
        Pet returned = owner.getPet("Bird", false);
        String nameOfPet = null;
        if (returned != null) {
            nameOfPet = returned.getName();
        }
        //Assert
        Assertions.assertEquals("Bird", nameOfPet);


    }

    @Test
    @Tag("GD-471")
    @DisplayName("To test to get the sorted Pet name list")
    //Arrange
    public void testGetPetsListSortedByName() {
        Owner owner = new Owner();
        Pet pet = new Pet();
        Pet pet1 = new Pet();
        //Act
        owner.addPet(pet);
        owner.addPet(pet1);
        pet.setName("Tommy");
        pet1.setName("Jack");
        String firstNameExpected = "Jack";
        //Assert
        Assertions.assertEquals(firstNameExpected, owner.getPets().get(0).getName());
    }

    @Test
    @Tag("GD-469")
    @DisplayName("Test to add  Pet of  the owner")
    //Arrange
    public void testAddPet() {
        Owner owner = new Owner();
        Pet pet = new Pet();
        //Act
        owner.addPet(pet);
        pet.setName("Mario");
        //Assert
        Assertions.assertEquals(pet, owner.getPet("Mario"));
    }

    @Test
    @Tag("GD-472")
    @DisplayName("To test  to set all the details to String is as expected")
    //Arrange
    public void testToString() {
        Owner owner = new Owner();
        String expected = "" +
            "id = 1, " +
            "new = false, " +
            "lastName = 'Karlson', " +
            "firstName = 'Mario', " +
            "address = 'Stockholm', " +
            "city = 'Göteborg', " +
            "telephone = '11111111'";
        //Act
        owner.setFirstName("Mario");
        owner.setLastName("Karlson");
        owner.setId(1);
        owner.setCity("Göteborg");
        owner.setAddress("Stockholm");
        owner.setTelephone("11111111");
        //Assert
        Assertions.assertTrue(owner.toString().contains(expected));
    }
}
