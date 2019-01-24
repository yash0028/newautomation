# Last updated on 
@US1541761
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1541761 - Market Lead approves retro

  @TC709185
  @Manual
  @Functional
  Scenario: TC709185 - [RL0]
    Given a retro approval request exists with the market lead
    When the market lead approves the retro request
    Then the retro approval request is assigned and routed to NPPP user group
    And the NPPP user group initial setup contains the following people: Lauro Patricio Cobos, Michael Timoney, and Nicole McManus and is configurable

