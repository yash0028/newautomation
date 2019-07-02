# Last updated on 
@US1835841
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1835841 - Prevent closure of "Loading:Submit for loading" - physician

  @TC840367
  @Manual
  @Functional
  Scenario: TC840367 - [RL0]
    Given a Physician Negotiation process exists and Retro Approval is required
    When Retro Approval is not in the monitoring stage as approved
    Then the "Loading: Submit for loading" task can't be completed.

