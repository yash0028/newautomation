# Last updated on 
@US1040747
@Configuration_for_2/15/19
@MVP
@PI04
@Plus
@F165531
@releasePresent
@iterationUnknown
Feature: US1040747 - View Contract Summary to view Escalator Details

  @TC564878
  @Automated
  @Functional
  @US1040747
  @Configuration_for_2/15/19
  Scenario: TC564878 - [RL0]
    Given a contract with an escalator
    When I view the Contract Summary
    Then I see Rate Escalator Summary

  @TC564879
  @Automated
  @Functional
  @US1040747
  @Configuration_for_2/15/19
  Scenario: TC564879 - [RL1]
    Given a Rate Escalator Summary
    When I look at the details
    Then I see the Section with the Rate Escalator details (Usually Section 3.10 or 3.11)
    And I see The type of Escalator (CPI, Deescalator, Fixed Rate, Multi-Year Rates, Variable)
    And I see the Inpatient Escalator Percent
    And I see the Outpatient Escalator Percent
    And I see Cumulative or non-cumulative

