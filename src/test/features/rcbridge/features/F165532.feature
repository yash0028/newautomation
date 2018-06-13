# Last updated on 2018-06-12T12:48:09.610Z
@MVP
@PI04
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
    And the date of the last chargemaster event
    And the Contract ID

