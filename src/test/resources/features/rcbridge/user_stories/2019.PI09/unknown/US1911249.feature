# Last updated on 
@US1911249
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1911249 - Platform Cosmos - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - AmendContract Replace Payment Appendix)

  @TC886616
  @Manual
  @Functional
  Scenario: TC886616 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid amendcontract event occurs in Exari for the contract
    And the transaction request is to Replace Payment Appendix
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

