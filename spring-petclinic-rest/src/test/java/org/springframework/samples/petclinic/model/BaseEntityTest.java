package org.springframework.samples.petclinic.model;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class BaseEntityTest {

    @Test
    @Tag("GD-453")
    @DisplayName("To test getId is as expected")
    //Arrange
    public void testgetId() {
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
    public void testgetIdnull() {
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
    void testisNew() {
        BaseEntity obj1 = new BaseEntity();
        obj1.setId(null);
        //Act
        Boolean actual = obj1.isNew();
        //Assertions
        Assertions.assertEquals(true, actual);
    }
   }

