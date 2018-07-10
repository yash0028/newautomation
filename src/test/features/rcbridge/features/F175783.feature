# Last updated on 2018-07-09T15:48:45.753Z
@MVP
@Priority_1
@Parity
Feature: F175783 - Choose and Send Ancillary contract subsets for Migrations by Pilot Market Numbers

  @2018.PI03
  @2018.PI03.01
  Scenario: US1206874
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI02.03
  Scenario: US1206876
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

