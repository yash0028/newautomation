# Last updated on 
@US1225013
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1225013 - Process Single Updates

  @TC564571
  @Automated
  @Functional
  Scenario: TC564571 - [RL0]
    Given I am the Entity Management Solution
    When a single update is received from a Legacy application
    Then I can process that single update

