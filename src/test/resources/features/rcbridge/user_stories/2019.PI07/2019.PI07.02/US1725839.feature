# Last updated on 
@US1725839
@2019.PI07
@2019.PI07.02
@releasePast
@iterationPast
Feature: US1725839 - Additional Network Benefit / ERWRAP Install and AmendmentInstall

  @TC792584
  @Manual
  @Functional
  Scenario: TC792584 - [RL0]
    Given an valid Exari contract transaction has been received
    When the ANB or ERWRAP marketproduct is applicable for the Contract MarketNumber
    And Product_Services_Excluded does not include ANB, ERWRAP, Charter, Core or Compass
    Then the ANB or ERWRAP marketproduct is included in the contract configuration record
    ###

