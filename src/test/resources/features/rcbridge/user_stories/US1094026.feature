# Last updated on 
@CLM_UAT
@PES
@US1094026
@2018.PI02
Feature: US1094026 - [Continued] Create External Data Query for PES

  @TC564627
  @Manual
  @Functional
  Scenario: TC564627 - [RL0] PES EDQ Validation
    Given UHC will need to provide Exari with PES data
    When Exari calls PES with MPIN and TIN
    Then an external data query will return a list of responses with the following populated fields if the result is a physician:
      | mpin |
      | tin |
      | firstName |
      | lastName |
      | address |
      | addressLine1 |
      | city |
      | zip |
      | state |
      | specialties |
      | specialtyCode |
      | description |
      | providerTypeCode |
      | phoneNumbers |
    And an external data query will return a list of responses with the following populated fields if the result is a facility:
      | mpin |
      | tin |
      | facilityName |
      | address |
      | addressLine1 |
      | city |
      | zip |
      | state |
      | organization |
      | organizationType |
      | organizationCode |
      | providerTypeCode |

