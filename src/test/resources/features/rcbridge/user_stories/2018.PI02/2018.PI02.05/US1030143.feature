# Last updated on 
@US1030143
@2018.PI02
@2018.PI02.05
@releasePast
@iterationPast
Feature: US1030143 - [Continued] Add a Contract Master to an Existing Physician on an Existing Contract

  @TC701645
  @Manual
  @Functional
  Scenario: TC701645 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

