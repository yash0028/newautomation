# Last updated on 
@US1342244
@2018.PI04
Feature: US1342244 - Identify conflicting Product Group combinations

  @TC590678
  @Manual
  @Functional
  Scenario: TC590678 - [RL1]
    Given the market product group exits
    When the market product group falls within both Included and Excluded groups
    Then the contract is not logical
    And should fail validation

  @TC590679
  @Manual
  @Functional
  Scenario: TC590679 - [RL2]
    Given the contract is valid
    When the same product group pulled in by one above the line market product group and a different below the line market product group
    Then the contract is not logical
    And should fail validation

  @TC590677
  @Manual
  @Functional
  Scenario: TC590677 - [RL0]
    Given a contract product group exists
    When the product group is included in both Product_Services_Included and Product_Services_Excluded
    Then the contract is not logical
    And should fail validation checks

