# Last updated on 
@MVP
@Priority_2
@Parity
@F217025
Feature: F217025 - Choose and Send Ancillary contract subsets for Migrations by Pilot Market Numbers - Part 2

  @US1206876
  @2018.PI04
  Scenario: US1206876 - Pilot (All 12 Market Numbers) - Ancillary
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

