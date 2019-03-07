# Last updated on 
@US1532458
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1532458 - Receive and recognize product events/transactions from Exari

  @TC738681
  @Manual
  @Functional
  Scenario: TC738681 - [RL0]
    Given event gateway api is ready with ContractAmended event
    And the contract is created in Exari
    When the amendment details are provided and made the contract active in Exari
    Then gateway api receive the contract amendment details
    And publish to Business event topic

