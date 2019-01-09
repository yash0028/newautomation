# Last updated on 
@US1479178
@releaseUnknown
@iterationUnknown
Feature: US1479178 - Assignment Role Alert

  @TC672209
  @Manual
  @Functional
  Scenario: TC672209 - [RL0]
    Given I am a User assigned to a role on an Entity
    When my Assignment Role is changed on an Entity I am assigned to
    Then I receive a notification alerting me of the change

