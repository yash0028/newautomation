# Last updated on 
@US1665582
@2019.PI07
@releaseFuture
@iterationUnknown
Feature: US1665582 - Name of people who approved retro

  @TC778306
  @Manual
  @Functional
  Scenario: TC778306 - [RL0]
    Given a retro request exists
    When it is approved by the Market Lead
    Then the name of the Market Lead approver is captured

  @TC778310
  @Manual
  @Functional
  Scenario: TC778310 - [RL1]
    Given a retro request exists
    When it is approved by NPPP
    Then the name of the NPPP approver is captured

  @TC778311
  @Manual
  @Functional
  Scenario: TC778311 - [RL2]
    Given a retro request exists
    When it is approved by a LOB COO
    Then the name of the LOB COO approver is captured
    And the LOB is captured

