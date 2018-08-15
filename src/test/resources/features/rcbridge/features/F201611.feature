# Last updated on 
@PI02_Top3
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
Feature: F201611 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum (Carryover Items from PI2)

  @MVP
  @PI02_Top3
  @CLM_Exari
  @US1100727
  @2018.PI03
  Scenario: US1100727 - External Data Query Roster Validation (on hold)
    Given I as a user have populated the Exari Provider Roster with MPIN, TAX ID, Provider Full Name (First, Last), and NPI
    When Exari reaches out to PES with the parameters that PES will validate against including MPIN, TAX ID, Provider Full Name (First, Last), and NPI
    Then PES returns the following information to me as matched or provide me with a list of providers that were not found.
      | MPIN                 |
      | TAX ID               |
      | Provider First Name  |
      | Provider Middle Name |
      | Provider Last Name   |
      | Provider Degree      | #MD DO PA NP         |
      | Facility Name        |
      | NPI                  |
      | Provider Type Code   |
      | Specialty Indicator  |
      | Org Type             |
      | Medicare ID          |
      | Credentialing Status |

  @PES
  @US1194560
  @2018.PI03
  Scenario: US1194560::0 - PES ExternaI Data Query (Appendix 1 lookup)
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
  @US1194560
  @2018.PI03
  Scenario: US1194560::1 - PES ExternaI Data Query (Appendix 1 lookup)
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
  @US1253705
  @2018.PI03
  Scenario: US1253705 - Create Appendix 1 Search Demographics API
    Given a counterparty with a corporate MPIN is chosen
    When the service is given a corporate MPIN
    Then all of the names, addresses, and TINs under that corporate MPIN are returned from the service

  @US1210131
  @2018.PI03
  Scenario: US1210131 - [SPIKE] Bulk Provider Extract - PES
    Given That PES needs to provide Exari with Bulk Provider Extract
    Then a developer will research how to provide Exari with the bulk provider extract.

