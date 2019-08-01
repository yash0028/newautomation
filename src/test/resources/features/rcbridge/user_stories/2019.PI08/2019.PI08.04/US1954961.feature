# Last updated on 
@US1954961
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1954961 - Amendment Eff date < Contract Effective Date validation set (Type 3 Error)

  @TC921995
  @Manual
  @Functional
  Scenario: TC921995 - [RL0]
    Given a contract transaction is received in the OCM
    And the transaction type == AmendContract
    When the contract effective date > amend effective date
    Then the transaction DOES NOT pass effective dates validation
    And a Type 3 Error Message generated
    And the transaction is aborted

  @TC921998
  @Manual
  @Functional
  Scenario: TC921998 - [RL1]
    Given a contract transaction is received in the OCM
    And the transaction type == AmendContract
    When the contract effective date < amend effective date
    Then the transaction DOES pass effective dates validation
    And the transaction continues OCM processing

