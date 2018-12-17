# Last updated on 
@US1463942
@releaseUnknown
@iterationUnknown
Feature: US1463942 - Entity Manager Email

  @TC672218
  @Manual
  @Functional
  Scenario: TC672218 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view contact information for Entity Managers assigned to an Entity
    Then I see the email address of each Entity Manager

