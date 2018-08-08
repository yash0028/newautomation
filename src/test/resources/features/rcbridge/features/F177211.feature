# Last updated on 2018-08-08T10:08:27.630Z
@MVP
@Priority_1
@Parity
Feature: F177211 - Receive Exari Status Acknowledgements and run Status Reports to account for all contracts by Pilot Market Numbers

  @2018.PI03
  @2018.PI03.04
  Scenario: US1239065
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @2018.PI03
  @2018.PI03.03
  Scenario: US1170932
    Given A Status file is received from Exari for a Contract Extract
    When A failure is encountered
    Then update status in Contract Status and generate a consolidated failure report

  @CLM_UAT
  @2018.PI03
  @2018.PI03.01
  Scenario: US1170931
    Given I run the migration and receive in acknowledgements from Exari
    When I run the Market Number report
    Then I receive the latest status information on the progress from UHG and Exari on each contract for the given Market Number

  @2018.PI03
  @2018.PI03.03
  Scenario: US1239064
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @2018.PI03
  @2018.PI03.02
  Scenario: US1206800
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @2018.PI03
  @2018.PI03.02
  Scenario: US1239061
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @2018.PI03
  @2018.PI03.01
  Scenario: US1170944
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @2018.PI03
  @2018.PI03.03
  Scenario: US1261628
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @CLM_UAT
  @2018.PI03
  @2018.PI03.03
  Scenario: US1100126
    Given a Contract Extract from Emptoris is sent to Exari via ECG
    When a status file is received from Exari after the extract is loaded
    Then the status file needs to be updated in Contract Status Table for status reporting

  @2018.PI03
  @2018.PI03.02
  Scenario: US1230156
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

