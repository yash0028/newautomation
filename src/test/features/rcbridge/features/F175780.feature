# Last updated on 2018-07-10T05:31:48.048Z
@MVP
@Priority_1
@Parity
Feature: F175780 - Choose and Send Facility contract subsets for Migrations by Pilot Market Numbers

  @2018.PI03
  @2018.PI03.01
  Scenario: US1206853
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Facility contract meets the Facility Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.03
  Scenario: US1206755
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Facility contract meets the Facility Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.01
  Scenario: US1206824
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre Release Activities are completed as mentioned in the Deployment Activities Checklist

