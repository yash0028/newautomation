# Last updated on 
@MVP
@PI04
@Plus
@F165531
Feature: F165531 - Setup Rate Escalator Workflow

  @US1040747
  @Configuration_for_12/1/18
  Scenario: US1040747::0 - View Contract Summary to view Escalator Details
    Given a contract with an escalator
    When I view the Contract Summary
    Then I see Rate Escalator Summary

  @US1040747
  @Configuration_for_12/1/18
  Scenario: US1040747::1 - View Contract Summary to view Escalator Details
    Given a Rate Escalator Summary
    When I look at the details
    Then I see the Section with the Rate Escalator details (Usually Section 3.10 or 3.11)
    And I see The type of Escalator (CPI, Deescalator, Fixed Rate, Multi-Year Rates, Variable)
    And I see the Inpatient Escalator Percent
    And I see the Outpatient Escalator Percent
    And I see Cumulative or non-cumulative

  @US1183620
  @Configuration_for_12/1/18
  Scenario: US1183620 - Escalator notice on Dashboard
    Given a contract with an escalator is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last escalator event
    And the Contract ID
    And the workflow status
    And the date of the next escalatorevent

  @US1183610
  @Configuration_for_12/1/18
  Scenario: US1183610 - Identify agreement with an escalator via Compliance Manager
    Given an executed or active agreement
    When it has a
    Then it is identified as having an escalaorcomponentAnd it is 120 calendars days before the anticipated escalator date.

