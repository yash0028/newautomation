# Last updated on 
@EXARI-11274
@US1089628
@releaseUnknown
@iterationUnknown
Feature: US1089628 - Perform Duplicate Check - Update Identifier

  @TC565432
  @Automated
  @Functional
  @EXARI-11274
  Scenario: TC565432 - [RL0]
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

