# Last updated on 
@US1660202
@2019.PI06
@2019.PI06.04
@releasePast
@iterationPast
Feature: US1660202 - Create service to provide Transaction installation status to Exari

  @TC759646
  @Automated
  @Functional
  Scenario: TC759646 - [RL0] successful install
    Given a new contract exists in Exari that has just become 'Active'
    When the contract has been successfully installed
    And a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event
    Then the Optum service should return the status of that installation transaction as 'Successful'

  @TC759650
  @Automated
  @Functional
  Scenario: TC759650 - [RL1] inprogress install
    Given a new contract exists in Exari that has just become 'Active'
    When the contract's installation process generates a Type 1 Contract Master error
    And a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event
    Then the Optum service should return the status of that installation transaction as 'InProgress'

  @TC759653
  @Manual
  @Functional
  Scenario: TC759653 - [RL2] successful install after type 1 remediation
    Given a new contract exists in Exari that has just become 'Active'
    When the contract's installation process generates a Type 1 Contract Master error
    And the Type 1 Contract Master error has been remediated
    And a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event
    Then the Optum service should return the status of that installation transaction as 'Successful'

  @TC759654
  @Automated
  @Functional
  Scenario: TC759654 - [RL3] partial success install
    Given a new contract exists in Exari that has just become 'Active'
    When the contract's installation process generates a Type 2 error for 1 of N Contract Line Adds
    And a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event
    Then the Optum service should return the status of that installation transaction as 'Partial Success'

  @TC759655
  @Manual
  @Functional
  Scenario: TC759655 - [RL4] successful install after type 2 remediation
    Given a new contract exists in Exari that has just become 'Active'
    When the contract's installation process generates a Type 2 error for 1 of N Contract Line Adds
    And the Type 2 Contract Line error has been remediated
    And a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event
    Then the Optum service should return the status of that installation transaction as 'Successful'

