# Last updated on 2018-07-09T15:33:39.989Z
@MVP
@PI04
@Plus
Feature: F165532 - Setup Chargemaster Workflow

  @2018.PI04
  Scenario: US1034211
    Given an executed or active agreement
    When it has a Percentage of Payment Rate (PPR) payment method
    Then it is identified as having a chargemaster componentAnd it is 120 days before the anticipated chargemaster date.

  @2018.PI04
  Scenario: US1034167
    Given a contract with chargemaster is identified
    When I click on 'Chargemaster Summary"
    Then I am able to view the details
    And Chargemaster language, Section 4.1d
    And What the provider is allowed to do
    And Duty to give notice
    And How we're going to do the changes
    And the Cap Amount - Percent increase allowed
    And PPR reimbursement category
    And "Lessor of" language
    And any non-standard language

  @2018.PI04
  Scenario: US1031489
    Given a contract with a chargemaster is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last chargemaster event
    And the Contract ID
    And the workflow status
    And the date of the next chargemaster event

