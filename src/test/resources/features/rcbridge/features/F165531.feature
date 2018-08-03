# Last updated on 2018-07-30T18:32:14.114Z
@MVP
@PI04
@Plus
Feature: F165531 - Setup Rate Escalator Workflow

  @Configuration_for_12/1/18
  Scenario: US1183620
    Given a contract with an escalator is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last escalator event
    And the Contract ID
    And the workflow status
    And the date of the next escalatorevent

  @Configuration_for_12/1/18
  Scenario: US1183610
    Given an executed or active agreement
    When it has a
    Then it is identified as having an escalaorcomponentAnd it is XXXX before the anticipated escalator date.

