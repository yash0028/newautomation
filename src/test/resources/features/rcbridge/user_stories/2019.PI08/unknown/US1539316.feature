# Last updated on 
@US1539316
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1539316 - Planned effective date changes in Physician workflow

  @TC743414
  @Manual
  @Functional
  Scenario: TC743414 - [RL0]
    Given a physician process exists with Retro Approval being required
    When the Planned Effective Date changes in the Physician Negotiation and the Retro Approval is NO longer required
    Then the Retro Approval Process is Closed with "Changed the Planned Effective Date"

  @TC840368
  @Manual
  @Functional
  Scenario: TC840368 - [RL1]
    Given a physician process exists with Retro Approval being required
    When the Planned Effective Date changes in the Physician Negotiation and the Retro Approval is STILL required
    Then the Retro Request Initiator will get a new retro task where they have to input new claims volumes and $

