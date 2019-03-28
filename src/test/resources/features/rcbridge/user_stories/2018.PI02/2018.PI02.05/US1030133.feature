# Last updated on 
@US1030133
@2018.PI02
@2018.PI02.05
@releasePast
@iterationPast
Feature: US1030133 - [Continued] Term (Cancel) entire Physician Contract all Contract Masters from Existing Exari Contract

  @TC564867
  @Automated
  @Functional
  Scenario: TC564867 - [RL0]
    Given The Physician (s) contract cancel is complete and correct within Exari
    When The contract (s) are included in the Exari Physician Cancel Contract ETL to NDB at the product level
    Then NDB should Cancel the contract (s) on the 'E' PNC contract screen successfully within NDB
    Given The Physician (s) contract cancel
    When The contract (s) validations fail
    Then Send an error message to the transaction status topic

