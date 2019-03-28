# Last updated on 
@US1194510
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1194510 - [Unfinished] Term (Cancel) entire Physician Contract all Contract Masters from Existing Exari Contract

  @TC605367
  @Manual
  @Functional
  Scenario: TC605367 - [RL0]
    Given The Physician (s) contract cancel is complete and correct within Exari
    When The contract (s) are included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract (s) on the 'E' PNC contract screen successfully within NDB
    Given The Physician (s) contract cancel
    When The contract (s) validations fail
    Then Send an error message to the transaction status topic

