# Last updated on 
@EXARI-11274
@US1089525
@F207050
@releaseUnknown
@iterationUnknown
Feature: US1089525 - Check for Duplicates - Updated Entity Identifier

  @TC565425
  @Automated
  @Functional
  @EXARI-11274
  @US1089525
  Scenario: TC565425 - [RL0]
    Given I am the Entity Management Solution
    When A User updates an Entity Identifier
    Then I perform a duplicate check on Entity Identifier
    And I display duplicates
    And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

