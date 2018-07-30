# Last updated on 2018-07-24T11:41:35.215Z
@MVP
@Priority_1
@Parity
Feature: F197107 - Continue - Choose and Send Physician contract subsets for Migrations by Pilot Market Number(s)

  @2018.PI03
  @2018.PI03.02
  Scenario: US1206891
    Given all 12 Pilot Market Number (3413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45597) Physician contracts meets the Physician Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.01
  Scenario: US1206826
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Physician contract meets the Physician Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.01
  Scenario: US1206736
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre release activities are completed as mentioned in the Deployment Activities Checklist

