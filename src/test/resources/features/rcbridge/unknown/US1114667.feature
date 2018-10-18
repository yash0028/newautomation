# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US1114667
@MVP
@Plus
@Priority_1
@F137675
@releaseUnknown
@iterationUnknown
Feature: US1114667 - Child Entity Relationships

  @TC564547
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11696
  @US1114667
  Scenario: TC564547 - [RL0]
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Child

