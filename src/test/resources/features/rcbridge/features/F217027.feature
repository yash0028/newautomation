# Last updated on 
@MVP
@Parity
@F217027
Feature: F217027 - Choose and Send FQHC/PHO/ACO/Filed contract subsets for Migrations by Pilot Market Numbers - Part 2

  @US1206869
  @2018.PI04
  Scenario: US1206869 - Pilot (All 12 Market Numbers) - Facility
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

