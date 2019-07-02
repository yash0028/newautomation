# Last updated on 
@US1744019
@2019.PI07
@2019.PI07.02
@releasePast
@iterationPast
Feature: US1744019 - Validate PCP retains membership

  @TC799058
  @Manual
  @Functional
  Scenario: TC799058 - [RL0]
    Given a ContractAmend transaction
    And the transaction is for fee schedule change
    And the transaction includes one or more PCP providers
    When the reassign MPIN was included in the payload
    And the reassign address sequence ID was included in the payload
    Then the PCP provider(s) will retain the same membership

