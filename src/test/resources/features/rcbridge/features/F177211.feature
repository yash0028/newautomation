# Last updated on 
@MVP
@Priority_1
@Parity
@F177211
Feature: F177211 - Receive Exari Status Acknowledgements and run Status Reports to account for all contracts by Pilot Market Numbers

  @US1170932
  @2018.PI03
  Scenario: US1170932 - Track Exari fallout  until resolution/remediation occurs
    Given A Status file is received from Exari for a Contract Extract
    When A failure is encountered
    Then update status in Contract Status and generate a consolidated failure report

  @CLM_UAT
  @US1170931
  @2018.PI03
  Scenario: US1170931 - Produce Market Number Reports to show status updates
    Given I run the migration and receive in acknowledgements from Exari
    When I run the Market Number report
    Then I receive the latest status information on the progress from UHG and Exari on each contract for the given Market Number

  @US1282243
  @2018.PI03
  Scenario: US1282243 - [Unfinished] Track UHC Fallout - resolution/remediation process
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @US1206800
  @2018.PI03
  Scenario: US1206800 - Apply Enhancement Opportunities after Pilot (Top 6) Market Migration (all Agreement Types)
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @US1170944
  @2018.PI03
  Scenario: US1170944 - Track UHC fallout  - Identification
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @CLM_UAT
  @US1100126
  @2018.PI03
  Scenario: US1100126 - Process acknowledgement from Exari into Contract Status table
    Given a Contract Extract from Emptoris is sent to Exari via ECG
    When a status file is received from Exari after the extract is loaded
    Then the status file needs to be updated in Contract Status Table for status reporting

  @US1239065
  @2018.PI03
  Scenario: US1239065 - additional logic for wraps, based on how integration will feed
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @US1239064
  @2018.PI03
  Scenario: US1239064 - Add logic to account for grace period if the contract package contains a related Draft/In Negotiation contract
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @US1239061
  @2018.PI03
  Scenario: US1239061 - Base driver has some base agreements in related columns
    Given we run Contract Extracts for UHN Physician, Facility, Ancillary and FQHC/PHO/ACO/Filed contracts in PI.03 Sprint 1 and 2
    When there are defects and/or enhancement opportunities from Contract Extracts
    Then Fix all defects and/or enhancement opportunity encountered

  @US1261628
  @2018.PI03
  Scenario: US1261628 - [Continued] Track UHC Fallout - resolution/remediation process
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @US1230156
  @2018.PI03
  Scenario: US1230156 - Track UHC Follout - resolution/remediation process
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @CLM_UAT
  @US1269578
  @2018.PI03
  Scenario: US1269578 - Additional Migration Enhancements
    Given a Contract Extract from Emptoris is sent to Exari via ECG
    When a status file is received from Exari after the extract is loaded
    Then the status file needs to be updated in Contract Status Table for status reporting

