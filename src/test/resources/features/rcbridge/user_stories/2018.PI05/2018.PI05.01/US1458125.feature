# Last updated on 
@US1458125
@2018.PI05
@2018.PI05.01
@releasePast
@iterationPast
Feature: US1458125 - Look-up CPS Contract Masters

  @TC658865
  @Manual
  @Functional
  Scenario: TC658865 - [RL0]
    Given a contract master look-up is required
    When DIV is equal to 'EVC'
    And the COSMOS package is equal to '22503'
    Then the contract master look-up should occur for UNET, not COSMOS
    And the look-up should include 'marketNumber', 'groupTableNumber', 'feeSchedule', 'productCode', and 'ipa'

