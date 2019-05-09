# Last updated on 
@US1034211
@releaseUnknown
@iterationUnknown
Feature: US1034211 - Identify contract with a chargemaster via Compliance Manager

  @TC565566
  @Manual
  @Functional
  Scenario: TC565566 - [RL0]
    Given an executed or active agreement
    When it has a Percentage of Payment Rate (PPR) payment method
    Then it is identified as having a chargemaster component
    And it is 120 days before the anticipated chargemaster date.

