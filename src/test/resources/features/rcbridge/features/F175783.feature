# Last updated on 
@MVP
@Priority_1
@Parity
@F175783
Feature: F175783 - Choose and Send Ancillary contract subsets for Migrations by Pilot Market Numbers

  @US1206874
  @2018.PI03
  Scenario: US1206874 - Pilot (Top 6 Market Numbers) - Ancillary
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @US1206873
  @2018.PI03
  Scenario: US1206873 - Review before Ancillary - Pilot (Top 6 Market Numbers) - Pre Release Activities - Applies to All Agreement Types
    Given a market number and an agreement type
    When there is a requirement to run the Contract Extract
    Then ensure all Pre Release Activities are completed as mentioned in the Deployment Activities Checklist

  @US1206876
  @2018.PI03
  Scenario: US1206876 - Pilot (All 12 Market Numbers) - Ancillary
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) Ancillary contract meets the Ancillary Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

