# Last updated on 
@US1479033
@releaseUnknown
@iterationUnknown
Feature: US1479033 - Assignment Alert Message

  @TC672224
  @Manual
  @Functional
  Scenario: TC672224 - [RL0]
    Given I am a User
    When I am assigned to a role on an Entity
    Then I receive a notification alerting me that I am now listed as a contact on that Entity

