# Last updated on 
@US1030155
@2018.PI02
@2018.PI02.05
@releasePast
@iterationPast
Feature: US1030155 - [Continued] Term (Cancel) Physician Contract Contract Master only from an active Exari Contract

  @TC565792
  @Automated
  @Functional
  Scenario: TC565792 - [RL0]
    Given The Physician contract cancel is complete and correct within Exari
    When The contract is included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract product lines on the 'E' PNC contract screen successfully within NDB
    Given The Physician contract extract
    When The contract is incomplete
    Then Send an error message to the transaction status topic

