# Last updated on 
@MVP
@EXARI-11274
@US1089625
@MVP
@releaseUnknown
@iterationUnknown
Feature: US1089625 - Perform Duplicate Check - Identifier

  @TC565596
  @Automated
  @Functional
  @MVP
  @EXARI-11274
  Scenario: TC565596 - [RL0]
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check against all active and inactive records for duplicate Identifiers
    And if duplicate Identifier exists, the User receives a notification to use existing Identifier
    And if duplicate Identifier does not exist, the User is allowed to proceed and create new

