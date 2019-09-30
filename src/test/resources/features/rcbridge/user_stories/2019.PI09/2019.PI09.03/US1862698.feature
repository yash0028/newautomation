# Last updated on 
@US1862698
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1862698 - Platform Unet - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - AmendContract Replace Payment Appendix)

  @TC857029
  @Manual
  @Functional
  Scenario: TC857029 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid amendcontract event occurs in Exari for the contract
    And the transaction request is to Replace Payment Appendix
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

