# Last updated on 
@US1031489
@Configuration_for_12/1/18
Feature: US1031489 - Chargemaster notice on Dashboard

  @TC564629
  @Automated
  @Functional
  Scenario: TC564629 - [RL0]
    Given a contract with a chargemaster is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last chargemaster event
    And the Contract ID
    And the workflow status
    And the date of the next chargemaster event

