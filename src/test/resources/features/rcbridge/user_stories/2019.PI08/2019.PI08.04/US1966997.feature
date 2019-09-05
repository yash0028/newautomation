# Last updated on 
@US1966997
@2019.PI08
@2019.PI08.04
@releasePast
@iterationPast
Feature: US1966997 - Help text on search page

  @TC942022
  @Manual
  @Functional
  Scenario: TC942022 - [RL0]
    Given a contractor is on the Deal ID Grid task
    When they view the page
    Then there is help text explaining what to do

  @TC942023
  @Manual
  @Functional
  Scenario: TC942023 - [RL1]
    Given a contractor is on the Display Search Result task
    When they view the page
    Then there is help text explaining what to do

