# Last updated on 
@US1401422
@2018.PI05
@releasePast
@iterationUnknown
Feature: US1401422 - UI/UX - CMD PCP reassign UI - view PCP reassign info

  @TC697430
  @Manual
  @Functional
  Scenario: TC697430 - [RL0]
    Given a cancel transaction has been processed
    When the PCP reassignment selection has been completed
    Then a user will be able to view the reassignment information within the CMD UI

