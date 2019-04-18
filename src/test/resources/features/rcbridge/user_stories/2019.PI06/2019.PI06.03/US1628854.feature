# Last updated on 
@Arvind
@US1628854
@2019.PI06
@2019.PI06.03
@releasePast
@iterationPast
Feature: US1628854 - Routing to NPPP after Market Lead Approves Retro

  @TC744419
  @Manual
  @Functional
  @Arvind
  Scenario: TC744419 - [RL0]
    Given a retro approval request is approved by the market lead
    When the task is completed
    Then the retro approval request is assigned and routed to NPPP user group
    #Note: NPPP user group initial setup contains the following people: Lauro Patricio Cobos, Michael Timoney, and Nicole McManus and is configurable

