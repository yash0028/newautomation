# Last updated on 
@US1194512
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1194512 - [Unfinished] Add a Contract Master to an Existing Physician on an Existing Contract

  @TC605427
  @Manual
  @Functional
  Scenario: TC605427 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

