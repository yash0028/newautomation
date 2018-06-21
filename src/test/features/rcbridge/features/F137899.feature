# Last updated on 2018-06-20T19:30:08.803Z
@MVP
@PI02_Top3
@CLM_Exari
@Exari_Microservice
@Parity
Feature: F137899 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum

  @CLM_UAT
  @Provider_Demograhics
  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US861016
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "30"
    Then PES returns the following information:
      | address          |
      | mpin             |
      | tin              |
      | firstName        |
      | lastName         |
      | facilityName     |
      | specialties      |
      | providerTypeCode |
      | phoneNumbers     |

    #And the system displays results with the best match first (Need to clarify this)

  @2018.PI02
  Scenario: US1131742
    Given I am a User with access to maintain Interview information
    When I populate an Exari Provider Roster with one or more of the following data points
      | MPIN                | #optional           |
      | TAX ID              | #optional           |
      | Provider First Name | #optional           |
      | Provider Last Name  | #optional           |
      | NPI                 | #optional           |

    Then Exari validates the populated data points against PES
    And the system updates the Exari Provider Roster
    And the Exari Provider Roster indicates which Providers had a match
    And the Exari Provider Roster indicates which Providers were not found

  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1089376
    Given many API's Exist
    Then the developer needs to understand the different APIs in order to use the correct one.

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI02
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

  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.03
  Scenario: US1094026
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


  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::0
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::1
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::2
    Given a user needs to call PES
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @2018.PI02
  @2018.PI02.04
  Scenario: US1176533
    Given I want to search for the sample MPIN provided from PES,
    When I hit the CLM demographic API,
    Then I see the fields required by the counterparty call, which were mapped from the new PES API stub

  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095936::0
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095936::1
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095936::2
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1095963
    Given a user has searched for provider
    When there are multiple results
    Then I see a list of those results.
    And I can select one to read more details.

