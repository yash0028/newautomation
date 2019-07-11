# Last updated on 
@US1898754
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1898754 - CMD Rules - MAHP GHMO - VIRGINIA Exception Provider (LAB RAD EXCEPTION tollgate 2)

  @TC877723
  @Manual
  @Functional
  Scenario: TC877723 - [RL0]
    Given MAHP GHMO product groups applies
    When MAHP GHMO Exception Provider conditions have been met
    And all Exception Category Type values from the table is stored
    Then the OCM process continues to gather details stored in the MAHP GHMO Exception Provider Tollgate 2 tables
    And continues for each applicable category type until all tables have been processed

  @TC877730
  @Manual
  @Functional
  Scenario: TC877730 - [RL1]
    Given MAHP GHMO Exception Provider conditions have been met
    And the contract market number 45592 <> 45597
    When the Exception Category Type assigned = Lab or Rad Exception
    Then the Lab Rad Exception table will be used to gather the Market Number+Market IPA details
    And the Market Number+Market IPA from the exception table records are used for OCM contract master processes
    And the Market Number+Market IPA from the CMD Product Group Description table are not used for OCM contract master processes

