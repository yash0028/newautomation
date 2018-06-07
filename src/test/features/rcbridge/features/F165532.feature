# Last updated on 2018-06-06T16:31:09.233Z
@MVP
@Plus
Feature: F165532 - Setup Chargemaster Workflow

  Scenario: US1034211
    Given an executed or active contract
    When it has a Percentage of Payment Rate (PPR) payment method
    Then it is identified as having a chargemaster component

  Scenario: US1031489
    Given a contract with a chargemaster is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    Then And the date of the last chargemaster event
    Then And the Contract ID

