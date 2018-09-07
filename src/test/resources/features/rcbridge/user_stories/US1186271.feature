# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US1186271
@2018.PI03
Feature: US1186271 - Return Active and Inactive Entities

  @TC565811
  @Automated
  @Functional
  Scenario: TC565811 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to find an Entity
    Then I can search for both Active and Inactive Entities simultaneously
    And the system returns Active and Inactive Entities in the same list
