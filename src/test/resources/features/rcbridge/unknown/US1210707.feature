# Last updated on 
@US1210707
@releaseUnknown
@iterationUnknown
Feature: US1210707 - Resource Store Cleanup Service

  @TC701685
  @Manual
  @Functional
  Scenario: TC701685 - [RL0]
    Given A transaction has been initiated
    And A resource was stored in the kv-store during the transaction
    When The transaction ends (transaction status event with status "ENDED" is received)
    Then All resources related to that transaction are deleted

