# Last updated on 
@US1987903
@releaseUnknown
@iterationUnknown
Feature: US1987903 - Submit for loading

  @TC938302
  @Manual
  @Functional
  Scenario: TC938302 - [RL0]
    Given a rate escalator exist
    When the Fee Schedule is updated
    Then the contractor must submit the contract for loading

