# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US1114664
@2018.PI03
Feature: US1114664 - Parent Entity Relationships

  @TC565031
  @Automated
  @Functional
  Scenario: TC565031 - [RL0]
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Parent

