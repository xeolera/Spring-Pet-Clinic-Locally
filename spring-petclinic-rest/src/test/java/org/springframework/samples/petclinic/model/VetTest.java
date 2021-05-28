package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.*;

import java.lang.reflect.Array;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

class VetTest {
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
    @Tag("GD-473")
    @DisplayName("Test to get a vets specialties, internally")
    void testGetSpecialtiesInternal() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec = new Specialty();                           // TestCode
        spec.setName("Vaccination");                                // TestCode
        Specialty spec2 = new Specialty();                          // TestCode
        spec2.setName("Surgery");                                   // TestCode
        Set<Specialty> vSpec = new HashSet<>();                     // TestCode
        vSpec.add(spec);                                            // TestCode
        vSpec.add(spec2);                                           // TestCode
        testV.setSpecialtiesInternal(vSpec);                        // TestCode
        Set<Specialty> newSpec = testV.getSpecialtiesInternal();    // CUT
        Assertions.assertEquals(vSpec, newSpec);                    // Assertions
    }

    @Test
    @Tag("GD-474")
    @DisplayName("Test to set a vets specialties, internally")
    void testSetSpecialtiesInternal() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec = new Specialty();                           // TestCode
        spec.setName("Vaccination");                                // TestCode
        Set<Specialty> vSpec = new HashSet<>();                     // TestCode
        vSpec.add(spec);                                            // TestCode
        testV.setSpecialtiesInternal(vSpec);                        // CUT
        Set<Specialty> newSet = testV.getSpecialtiesInternal();     // TestCode
        Object[] array = newSet.toArray();                          // TestCode
        String string = array[0].toString();                        // TestCode
        Assertions.assertEquals("Vaccination", string);     // Assertions
    }

    @Test
    @Tag("GD-475")
    @DisplayName("Test to get a vets specialties")
    void testGetSpecialties() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec = new Specialty();                           // TestCode
        spec.setName("Surgery");                                    // TestCode
        Set<Specialty> vSpec = new HashSet<>();                     // TestCode
        vSpec.add(spec);                                            // TestCode
        testV.setSpecialtiesInternal(vSpec);                        // TestCode
        List<Specialty> allSpecs = testV.getSpecialties();          // CUT
        Assertions.assertEquals("Surgery", allSpecs.get(0).getName());  // Assertions
    }

    @Test
    @Tag("GD-476")
    @DisplayName("Test to get the number of specialties for a vet")
    void testGetNrOfSpecialties() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec1 = new Specialty();                          // TestCode
        spec1.setName("Vaccination");                               // TestCode
        Specialty spec2 = new Specialty();                          // TestCode
        spec2.setName("Surgery");                                   // TestCode
        Specialty spec3 = new Specialty();                          // TestCode
        spec3.setName("Dentist");                                   // TestCode
        Set<Specialty> vSpec = new HashSet<>();                     // TestCode
        vSpec.add(spec1);                                           // TestCode
        vSpec.add(spec2);                                           // TestCode
        vSpec.add(spec3);                                           // TestCode
        testV.setSpecialtiesInternal(vSpec);                        // TestCode
        int nrOfSpecialties = testV.getNrOfSpecialties();           // CUT
        Assertions.assertEquals(3,nrOfSpecialties);         // Assertions
    }

    @Test
    @Tag("GD-477")
    @DisplayName("Test to add a specialty to a vet")
    void testAddSpecialty() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec = new Specialty();                           // TestCode
        spec.setName("Vaccination");                                // TestCode
        testV.addSpecialty(spec);                                   // CUT
        List<Specialty> allSpecs = testV.getSpecialties();          // TestCode
        Assertions.assertEquals("Vaccination", allSpecs.get(0).getName());  // Assertions
    }

    @Test
    @Tag("GD-478")
    @DisplayName("Test to clear all specialties for a vet")
    void testClearSpecialties() {
        Vet testV = new Vet();                                      // TestCode
        Specialty spec1 = new Specialty();                          // TestCode
        spec1.setName("Vaccination");                               // TestCode
        Specialty spec2 = new Specialty();                          // TestCode
        spec2.setName("Surgery");                                   // TestCode
        Set<Specialty> vSpec = new HashSet<>();                     // TestCode
        vSpec.add(spec1);                                           // TestCode
        vSpec.add(spec2);                                           // TestCode
        testV.setSpecialtiesInternal(vSpec);                        // TestCode
        int nrOfSpecialties = testV.getNrOfSpecialties();           // TestCode
        Assertions.assertEquals(2,nrOfSpecialties);         // Assertions
        testV.clearSpecialties();                                   // CUT
        nrOfSpecialties = testV.getNrOfSpecialties();               // TestCode
        Assertions.assertEquals(0,nrOfSpecialties);         // Assertions
    }
}
