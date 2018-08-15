# Last updated on 
@MVP
@PI04
@Plus
@F165532
Feature: F165532 - Setup Chargemaster Workflow

  @US1034211
  @Configuration_for_12/1/18
  Scenario: US1034211 - Identify contract with a chargemaster via Compliance Manager
    Given an executed or active agreement
    When it has a Percentage of Payment Rate (PPR) payment method
    Then it is identified as having a chargemaster componentAnd it is 120 days before the anticipated chargemaster date.

  @US1034167
  @Configuration_for_12/1/18
  Scenario: US1034167 - Provide chargemaster summary via the 'Contract Summary'
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

  @US1031489
  @Configuration_for_12/1/18
  Scenario: US1031489 - Chargemaster notice on Dashboard
    Given a contract with a chargemaster is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last chargemaster event
    And the Contract ID
    And the workflow status
    And the date of the next chargemaster event

