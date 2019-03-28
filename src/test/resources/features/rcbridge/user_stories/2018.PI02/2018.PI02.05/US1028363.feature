# Last updated on 
@US1028363
@2018.PI02
@2018.PI02.05
@releasePast
@iterationPast
Feature: US1028363 - [Continued] Term (Cancel) Physician Contract from an active Exari Contract

  @TC565235
  @Automated
  @Functional
  Scenario: TC565235 - [RL0]
    Given The Physician contract cancel is complete and correct within Exari
    When The contract is included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract on the 'E' PNC contract screen successfully within NDB
    Given The Physician contract cancel
    When The Contract cancellation fails
    Then An error message is sent to the transaction status topic

