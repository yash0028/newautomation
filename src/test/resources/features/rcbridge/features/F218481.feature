# Last updated on 
@Priority_1
@F218481
Feature: F218481 - Synchronize Name and Unique ID

  @US1285745
  Scenario: US1285745 - Synchronize Unique ID
    Given I am a Legacy Application
    When an Entity ID is updated
    Then the matching record in the Entity Management Solution is updated

  @US1285744
  @2018.PI04
  Scenario: US1285744 - Synchronize Name
    Given I am a Legacy Application
    When an Entity Name is updated
    Then the matching record in the Entity Management Solution is updated

