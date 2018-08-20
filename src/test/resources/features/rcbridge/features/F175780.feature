# Last updated on 
@MVP
@Priority_1
@Parity
@F175780
Feature: F175780 - Choose and Send Facility contract subsets for Migrations by Pilot Market Numbers

  @US1206755
  @2018.PI04
  Scenario: US1206755 - Pilot (All 12 Market Numbers) - Facility
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Facility contract meets the Facility Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

