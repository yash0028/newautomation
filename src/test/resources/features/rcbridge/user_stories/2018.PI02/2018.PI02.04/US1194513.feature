# Last updated on 
@US1194513
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1194513 - [Unfinished] Term (Cancel) Physician Contract Contract Master only from an active Exari Contract

  @TC605356
  @Manual
  @Functional
  Scenario: TC605356 - [RL0]
    Given The Physician contract cancel is complete and correct within Exari
    When The contract is included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract product lines on the 'E' PNC contract screen successfully within NDB
    Given The Physician contract extract
    When The contract is incomplete
    Then Send an error message to the transaction status topic

