# Last updated on 
@MVP
@US1171452
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1171452 - Identify Matching Tax IDs

  @TC564666
  @Automated
  @Functional
  @MVP
  Scenario: TC564666 - [RL0]
    Given I am the Entity Management Solution
    When a User uploads a file of validated Tax IDs
    Then I find matching Tax IDs stored in the Entity Management Solution

