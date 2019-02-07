# Last updated on 
@US1403777
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1403777 - Process CANCEL transaction to subscribing platform(s)

  @TC713743
  @Manual
  @Functional
  Scenario: TC713743 - [RL0]
    Given a contract effectiveenddate has been changed on a contract
    When a valid termination or cancellation reason code exists on the transaction request
    Then the contract configuration record is updated with an end date
    And the contract provider configuration records are also updated with the end date
    ###

