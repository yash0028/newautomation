# Last updated on 
@US1396749
@2018.PI05
@MVP
@Maintenance
@F236509
@releaseFuture
@iterationUnknown
Feature: US1396749 - Allow closing out of Active contract when Duplicate Edit is triggering

  @TC619292
  @Manual
  @Functional
  @US1396749
  @2018.PI05
  Scenario: TC619292 - [RL0]
    Given I invoke Duplicate Edit 1 or 2
    When I close out of the contract and reopen
    Then I am able to start where I left off and fix the Duplicate Edit and another other MPIN/TIN(s) that were successful during maintenance were able to feed

