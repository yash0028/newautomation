# Last updated on 
@US1034211
@Configuration_for_12/1/18
Feature: US1034211 - Identify contract with a chargemaster via Compliance Manager

  @TC565566
  @Automated
  @Functional
  Scenario: TC565566 - [RL0]
    Given an executed or active agreement
    When it has a Percentage of Payment Rate (PPR) payment method
    Then it is identified as having a chargemaster componentAnd it is 120 days before the anticipated chargemaster date.

