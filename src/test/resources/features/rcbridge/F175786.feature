# Last updated on 2018-07-10T05:31:48.872Z
@MVP
@Priority_1
@Parity
Feature: F175786 - Choose and Send FQHC/PHO/ACO/Filed contract subsets for Migrations by Pilot Market Numbers

  @2018.PI03
  @2018.PI03.02
  Scenario: US1206868
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.04
  Scenario: US1206869
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @2018.PI03
  @2018.PI03.02
  Scenario: US1206867
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre release activities are completed as mentioned in the Deployment Activities Checklist

