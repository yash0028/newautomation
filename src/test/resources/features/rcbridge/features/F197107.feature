# Last updated on 
@MVP
@Priority_1
@Parity
@F197107
Feature: F197107 - Continue - Choose and Send Physician contract subsets for Migrations by Pilot Market Number(s)

  @US1206891
  @2018.PI03
  Scenario: US1206891 - [Continued] Pilot (All 12 Market Numbers) - Physician
    Given all 12 Pilot Market Number (3413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45597) Physician contracts meets the Physician Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @US1206826
  @2018.PI03
  Scenario: US1206826 - Pilot (Top 6 Market Numbers) - Physician
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Physician contract meets the Physician Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @US1206736
  @2018.PI03
  Scenario: US1206736 - Pilot (Top 6 Market Numbers) - Pre Release Activities - Applies to All Agreement Types
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre release activities are completed as mentioned in the Deployment Activities Checklist

