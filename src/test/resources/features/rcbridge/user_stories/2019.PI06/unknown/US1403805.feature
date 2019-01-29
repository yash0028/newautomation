# Last updated on 
@US1403805
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1403805 - Process / cascade cancel transaction to all Roster records

  @TC713738
  @Manual
  @Functional
  Scenario: TC713738 - [RL0]
    Given a ContractTerminate transaction has been published
    When the transaction data has been validated
    Then the provider contract line records will be accessed from the OCM record
    And the provider contract line will be timelined within the applicable platforms
    And the updated provider contract line confirmations, including cancel information (e.g. date and reason) will be stored within the OCM database
    ###

