# Last updated on 
@US1869948
@2019.PI08
@2019.PI08.02
@releaseFuture
@iterationFuture
Feature: US1869948 - 1 View Escalator Details - integration

  @TC863804
  @Manual
  @Functional
  Scenario: TC863804 - [RL1]
    Given a Rate Escalator Summary
    When I look at the details
    Then I see the Section with the Rate Escalator details (Usually Section 3.10 or 3.11)
    And I see The type of Escalator (CPI, Deescalator, Fixed Rate, Multi-Year Rates, Variable)
    And I see the Inpatient Escalator Percent
    And I see the Outpatient Escalator Percent
    And I see Cumulative or non-cumulative

