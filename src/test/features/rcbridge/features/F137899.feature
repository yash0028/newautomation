# Last updated on 2018-06-26T19:24:50.946Z
@MVP
@PI02_Top3
@CLM_Exari
@Exari_Microservice
@Parity
Feature: F137899 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum

  @Provider_Demograhics
  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US861016::0
    #for Physician
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "30"
    Then PES returns the following information:
      | address          |
      | mpin             |
      | tin              |
      | firstName        |
      | lastName         |
      | specialties      |
      | providerTypeCode |
      | phoneNumbers     |

    #And the system displays results with the best match first (Need to clarify this)

  @Provider_Demograhics
  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US861016::1
    #for Facility
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "6177192"
    Then PES returns the following information:
      | facilityName     |
      | address          |
      | mpin             |
      | tin              |
      | providerTypeCode |


  @CLM_UAT
  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1089376
    Given many API's Exist
    Then the developer needs to understand the different APIs in order to use the correct one.

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
  Scenario: US1178363
    When a user calls the service and service is unable to fulfill the request
    Then it must respond back with appropriate error code
    And client must show the error details with sufficient information to guide them in order to take an action to resolve the error situation

  @PES
  @2018.PI02
  @2018.PI02.04
  Scenario: US1176533::0
    #For Physician MPINGiven I am a User with access to add a Counterparty to an Interview
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
  @2018.PI02
  @2018.PI02.04
  Scenario: US1176533::1
    #For Facility MPINGiven I am a User with access to add a Counterparty to an Interview
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

