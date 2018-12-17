# Last updated on 
@US1463946
@releaseUnknown
@iterationUnknown
Feature: US1463946 - Entity Manager Assignment Role

  @TC672216
  @Manual
  @Functional
  Scenario: TC672216 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view information about Entity Managers assigned to an Entity
    Then I can see the Assignment Role of each Entity Manager

