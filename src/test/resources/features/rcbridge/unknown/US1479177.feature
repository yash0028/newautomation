# Last updated on 
@US1479177
@releaseUnknown
@iterationUnknown
Feature: US1479177 - Assignment Level Alert

  @TC672210
  @Manual
  @Functional
  Scenario: TC672210 - [RL0]
    Given I am a User assigned to a role on an Entity
    When my Assignment Level is changed on an Entity I am assigned to
    Then I receive a notification alerting me of the change

