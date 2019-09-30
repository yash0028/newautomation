# Last updated on 
@US1536947
@2019.PI07
@2019.PI07.02
@releasePast
@iterationPast
Feature: US1536947 - Pass contract information to downstream - Cancel [NDB]

  @TC743364
  @Manual
  @Functional
  Scenario: TC743364 - [RL0]
    Given The Physician contract cancel is complete and correct within Exari
    When The contract is included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract on the 'E' PNC contract screen successfully within NDB

  @TC816811
  @Manual
  @Functional
  Scenario: TC816811 - [RL1]
    Given The Physician contract cancel
    When The Contract cancellation fails
    Then An error message is sent to the transaction status topic
    ###

