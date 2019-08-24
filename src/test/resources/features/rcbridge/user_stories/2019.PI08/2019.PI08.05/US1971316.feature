# Last updated on 
@US1971316
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1971316 - MAHP GHMO - PCPs require additional IPA 777 contract record

  @TC928899
  @Manual
  @Functional
  Scenario: TC928899 - [RL0]
    Given MAHP GHMO exists in an OCM contract record
    When MAHP GHMO applies to a provider in the contract roster
    And the Network RoleType of the provider determined to be P
    Then the provider will always include at least 2 MAHP GHMO contract records (contract line)
    And one of the MAHP GHMO records will include a configuration which include IPA 777

