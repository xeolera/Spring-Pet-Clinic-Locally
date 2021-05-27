package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class NamedEntityTest {
    @Test
    @Tag("GD-457")
    @DisplayName("Be able to fetch the name as expected")
    //Arrange
    public void testgetName() {
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
