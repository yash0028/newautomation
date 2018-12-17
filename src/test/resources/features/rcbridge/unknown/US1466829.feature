# Last updated on 
@US1466829
@releaseUnknown
@iterationUnknown
Feature: US1466829 - Corporate Owner Name

  @TC672225
  @Manual
  @Functional
  Scenario: TC672225 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I am viewing information about a Tax ID associated to an Entity
    Then I see the Corporate Owner for each Tax ID related to an Entity

