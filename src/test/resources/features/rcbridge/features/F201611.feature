# Last updated on 2018-08-08T14:31:58.283Z
@PI02_Top3
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
Feature: F201611 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum (Carryover Items from PI2)

  @PES
  @2018.PI03
  @2018.PI03.04
  Scenario: US1194560::0
    #For Physician MPIN
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "30"
    Then PES returns the following information:
      | mpin             |
      | tin              |
      | firstName        |
      | middleName       |
      | lastName         |
      | address          |
      | organization     |
      | specialties      |
      | providerTypeCode |
      | npi              |
      | phoneNumbers     |
      | faxNumbers       |


  @PES
  @2018.PI03
  @2018.PI03.04
  Scenario: US1194560::1
    #For Facility MPIN
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "6177192"
    Then PES returns the following information:
      | mpin             |
      | tin              |
      | facilityName     |
      | address          |
      | organization     |
      | specialties      |
      | providerTypeCode |
      | npi              |
      | phoneNumbers     |


  @Andrew_B
  @PES
  @2018.PI03
  @2018.PI03.03
  Scenario: US1253705
    Given a counterparty with a corporate MPIN is chosen
    When the service is given a corporate MPIN
    Then all of the names, addresses, and TINs under that corporate MPIN are returned from the service

  @2018.PI03
  @2018.PI03.01
  Scenario: US1210131
    Given That PES needs to provide Exari with Bulk Provider Extract
    Then a developer will research how to provide Exari with the bulk provider extract.

