# Last updated on 
@MVP
@Priority_1
@Parity
@F175786
Feature: F175786 - Choose and Send FQHC/PHO/ACO/Filed contract subsets for Migrations by Pilot Market Numbers

  @US1206868
  @2018.PI03
  Scenario: US1206868 - Pilot (Top 6 Market Numbers) - FQHC/PHO/ACO/Filed
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @US1206869
  @2018.PI03
  Scenario: US1206869 - Pilot (All 12 Market Numbers) - Facility
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

