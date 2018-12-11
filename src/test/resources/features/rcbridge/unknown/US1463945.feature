# Last updated on 
@US1463945
@releaseUnknown
@iterationUnknown
Feature: US1463945 - Entity Manager Assignment Level

  @TC672214
  @Manual
  @Functional
  Scenario: TC672214 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view information about Entity Managers assigned to an Entity
    Then I can see the Assignment Level of each Entity Manager

