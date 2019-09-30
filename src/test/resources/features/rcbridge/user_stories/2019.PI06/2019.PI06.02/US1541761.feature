# Last updated on 
@US1541761
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1541761 - Routing-Market Lead Approves Retro

  @TC709185
  @Manual
  @Functional
  Scenario: TC709185 - [RL0]
    Given a retro approval request exists with the market lead's queue
    When the market lead selects "Approve" on the retro request
    Then the Market Lead's tasks are complete.

