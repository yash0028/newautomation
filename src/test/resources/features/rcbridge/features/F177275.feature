# Last updated on 
@MVP
@Priority_1
@Parity
@F177275
Feature: F177275 - Choose and Send Fallout Base Agreement contract subsets for Migrations by Remaining Physician Market Numbers

  @US1170932
  @2018.PI04
  Scenario: US1170932 - Track Exari fallout  until resolution/remediation occurs
    Given A Status file is received from Exari for a Contract Extract
    When A failure is encountered
    Then update status in Contract Status and generate a consolidated failure report

