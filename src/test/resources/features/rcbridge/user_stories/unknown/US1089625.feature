# Last updated on 
@EXARI-11274
@US1089625
@F207050
Feature: US1089625 - Perform Duplicate Check - Add Identifier

  @TC565596
  @Automated
  @Functional
  @EXARI-11274
  @US1089625
  Scenario: TC565596 - [RL0]
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    And I have performed field validation
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

