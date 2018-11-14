# Last updated on 
@US1089509
@releaseUnknown
@iterationUnknown
Feature: US1089509 - Update Entity Address Type

  @TC565903
  @Automated
  @Functional
  Scenario: TC565903 - [RL0]
    Given I am a User
    When I need to update an Entity Address Type
    Then I have the ability to update Entity Address Type
    And the updated Entity enters the approval process workflow

