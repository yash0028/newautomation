# Last updated on 
@MVP
@Priority_1
@Parity
@F175789
Feature: F175789 - Choose and Send Fallout Base Agreement contract subsets for Migrations by Pilot Market Numbers

  @US1206864
  @2018.PI03
  Scenario: US1206864 - Pilot (All 12 Market Numbers) - Fallout
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Fallout contract meets the Fallout Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @US1206863
  @2018.PI03
  Scenario: US1206863 - Pilot (Top 6 Market Numbers) - Fallout
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Fallout contract meets the Fallout Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

