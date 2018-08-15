# Last updated on 
@MVP
@PI02_Top3
@AUTO-PES
@CLM_Exari
@Exari_Microservice
@Parity
@F137899
Feature: F137899 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum

  @CLM_UAT
  @Provider_Demograhics
  @PES
  @US861016
  @2018.PI02
  Scenario: US861016::0 - (Provider) Create Micro Service Providing Demographic Data Requests To PES - Counter Party lookup
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

  @CLM_UAT
  @Provider_Demograhics
  @PES
  @US861016
  @2018.PI02
  Scenario: US861016::1 - (Provider) Create Micro Service Providing Demographic Data Requests To PES - Counter Party lookup
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
  @US1089376
  @2018.PI02
  Scenario: US1089376 - [Spike] Identify Data Source Needed for Demographic Data
    Given many API's Exist
    Then the developer needs to understand the different APIs in order to use the correct one.

  @CLM_UAT
  @PES
  @US1094026
  @2018.PI02
  Scenario: US1094026 - [Continued] Create External Data Query for PES
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
  @US1093992
  @2018.PI02
  Scenario: US1093992::0 - Handle Errors from PES
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @CLM_UAT
  @PES
  @US1093992
  @2018.PI02
  Scenario: US1093992::1 - Handle Errors from PES
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @CLM_UAT
  @PES
  @US1093992
  @2018.PI02
  Scenario: US1093992::2 - Handle Errors from PES
    Given a user needs to call PES
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @US1178363
  @2018.PI02
  Scenario: US1178363 - Error and Exception Handling framework
    When a user calls the service and service is unable to fulfill the request
    Then it must respond back with appropriate error code
    And client must show the error details with sufficient information to guide them in order to take an action to resolve the error situation

  @PES
  @US1176533
  @2018.PI02
  Scenario: US1176533::0 - Enhancement to use new PES combined API (Counter Party) stub API
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
  @US1176533
  @2018.PI02
  Scenario: US1176533::1 - Enhancement to use new PES combined API (Counter Party) stub API
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

  @PES
  @US1095936
  @2018.PI02
  Scenario: US1095936::0 - External Data Query for PES - Error Handling
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @PES
  @US1095936
  @2018.PI02
  Scenario: US1095936::1 - External Data Query for PES - Error Handling
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @PES
  @US1095936
  @2018.PI02
  Scenario: US1095936::2 - External Data Query for PES - Error Handling
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

  @PES
  @US1095963
  @2018.PI02
  Scenario: US1095963 - Multiple Results (PES)
    Given a user has searched for provider
    When there are multiple results
    Then I see a list of those results.
    And I can select one to read more details.

