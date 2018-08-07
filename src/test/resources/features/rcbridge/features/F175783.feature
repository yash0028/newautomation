# Last updated on 2018-08-07T15:58:53.296Z
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
  @2018.PI03.01
  Scenario: US1206873
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre Release Activities are completed as mentioned in the Deployment Activities Checklist

  @2018.PI03
  @2018.PI03.03
  Scenario: US1206876
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

