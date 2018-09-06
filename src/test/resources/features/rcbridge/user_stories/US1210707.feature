# Last updated on 
@US1210707
Feature: US1210707 - Resource Store Cleanup Service

  @TC565760
  @Automated
  @Functional
  Scenario: TC565760 - [RL0]
    Given A transaction has been initiated
    And A resource was stored in the kv-store during the transaction
    When The transaction ends (transaction status event with status "ENDED" is received)
    Then All resources related to that transaction are deleted

