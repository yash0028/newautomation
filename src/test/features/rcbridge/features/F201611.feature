# Last updated on 2018-07-09T15:05:28.758Z
@MVP
@PI02_Top3
@Priority_1
@CLM_Exari
@Exari_Microservice
@Parity
Feature: F201611 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum (Carryover Items from PI2)

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI03
  Scenario: US1100727
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

    And the system displays results with the best match first

  @PES
  @2018.PI03
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


