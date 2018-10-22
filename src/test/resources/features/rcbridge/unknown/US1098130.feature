# Last updated on
@US1098130
@Non_MVP
@F184553
@releaseUnknown
@iterationUnknown
Feature: US1098130 - Migrate Examiner MPINs

  @TC565897
  @Automated
  @Functional
  @US1098130
  Scenario: TC565897 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to maintain an MPIN that was located in the Examiner system
    Then I maintain the MPIN in the Entity Management Solution
    And the appropriate timelines for the MPIN are in the Entity Management Solution

