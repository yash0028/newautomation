# Last updated on
@CLM_UAT
@PES
@US1094026
@2018.PI02
@2018.PI02.03
@PI02_Top3
@AUTO-PES
@PES
@Exari_Microservice
@MVP
@CLM_Exari
@Parity
@F137899
@releasePast
@iterationPast
Feature: US1094026 - [Continued] Create External Data Query for PES

  @TC564627
  @Manual
  @Functional
  @CLM_UAT
  @PES
  @US1094026
  @2018.PI02
  @2018.PI02.03
  Scenario: TC564627 - [RL0] PES EDQ Validation
    Given UHC will need to provide Exari with PES data
    When Exari calls PES with MPIN and TIN
    Then an external data query will return a list of responses with the following populated fields if the result is a physician:
      | mpin             |
      | tin              |
      | firstName        |
      | lastName         |
      | address          |
      | addressLine1     |
      | city             |
      | zip              |
      | state            |
      | specialties      |
      | specialtyCode    |
      | description      |
      | providerTypeCode |
      | phoneNumbers     |
    And an external data query will return a list of responses with the following populated fields if the result is a facility:
      | mpin             |
      | tin              |
      | facilityName     |
      | address          |
      | addressLine1     |
      | city             |
      | zip              |
      | state            |
      | organization     |
      | organizationType |
      | organizationCode |
      | providerTypeCode |

