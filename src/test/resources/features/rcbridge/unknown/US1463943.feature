# Last updated on 
@US1463943
@releaseUnknown
@iterationUnknown
Feature: US1463943 - Entity Manager Phone Number

  @TC672205
  @Manual
  @Functional
  Scenario: TC672205 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the contact information for Entity Managers assigned to an Entity
    Then I can see the telephone number of each Entity Manager

