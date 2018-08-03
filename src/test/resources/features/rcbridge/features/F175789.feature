# Last updated on 2018-07-31T09:38:57.596Z
@MVP
@Priority_1
@Parity
Feature: F175789 - Choose and Send Fallout Base Agreement contract subsets for Migrations by Pilot Market Numbers

  @2018.PI03
  @2018.PI03.04
  Scenario: US1206864
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Fallout contract meets the Fallout Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.02
  Scenario: US1206863
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Fallout contract meets the Fallout Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

