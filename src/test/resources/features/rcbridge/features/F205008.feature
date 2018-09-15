# Last updated on 
@F205008
Feature: F205008 - Placeholder for future features

  @MVP+1
  @US1211464
  @2018.PI03
  Scenario: US1211464::0 - Identify contract provider Market Number
    Given an healthcare provider is party to an Exari contract record
    When a primary or additional service location address is associated to the provider record
    Then the zip code of the each service location is identified
    And used to identify the market number via NDB zip to market number table crosswalk

  @MVP+1
  @US1211464
  @2018.PI03
  Scenario: US1211464::1 - Identify contract provider Market Number
    Given an healthcare provider is party to an Exari contract record
    When the market number has been identified via the zip to market number crosswalk
    Then the market number of the provider address is compared to the market number assigned to the contract

  @MVP+1
  @US1211464
  @2018.PI03
  Scenario: US1211464::2 - Identify contract provider Market Number
    Given the market number of the provider record has been compared to the market number assigned to the contract
    When the market numbers are identical
    Then the contract market number is used

  @MVP+1
  @US1211464
  @2018.PI03
  Scenario: US1211464::3 - Identify contract provider Market Number
    Given the market number of the provider record has been compared to the market number assigned to the contract
    When the market numbers are not identical
    Then the provider market number is used
    And a warning message is generated or logged

  @MVP+1
  @US1211287
  @2018.PI03
  Scenario: US1211287::0 - Identify Product Group
    Given an Exari contract record exists
    When the contract includes product descriptions that meet contract master conditions
    Then the product code group from the product crosswalk table is used

  @MVP+1
  @US1211287
  @2018.PI03
  Scenario: US1211287::1 - Identify Product Group
    Given an Exari contract record exists
    When the contract includes network descriptions that meet contract master conditions
    Then the network code from the product crosswalk table is used

  @MVP+1
  @US1211073
  @2018.PI03
  Scenario: US1211073::0 - Determine Contract Master condition applies
    Given an Exari contract record exists
    When the contract includes one or more products administered on the UNET or COSMOS claim platforms
    Then the contract meets the conditions to use contract master logic

  @MVP+1
  @US1211073
  @2018.PI03
  Scenario: US1211073::1 - Determine Contract Master condition applies
    Given an Exari contract record exists
    When the contract does not include a product administered on the UNET or COSMOS claim platform
    Then the contract does not meet the conditions to use contract master logic

  @MVP+1
  @US1211073
  @2018.PI03
  Scenario: US1211073::2 - Determine Contract Master condition applies
    Given an Exari contract record exists
    When the contract includes one or more networks administered in NDB
    Then the contract meets the conditions to use contract master logic

  @MVP+1
  @US1211073
  @2018.PI03
  Scenario: US1211073::3 - Determine Contract Master condition applies
    Given an Exari contract record exists
    When the contract includes Healthcare Providers which bill on CMS-1500 claim forms
    Then the contract meets the conditions to use contract master logic

  @MVP+1
  @US1211188
  @2018.PI03
  Scenario: US1211188::0 - Identify Fee Schedule
    Given an Exari contract record exists
    When the contract record has a fee schedule assigned
    Then the fee schedule number from the contract record is used

  @MVP+1
  @US1211188
  @2018.PI03
  Scenario: US1211188::1 - Identify Fee Schedule
    Given an Exari contract record exists
    When the contract record does not have a fee schedule assigned
    Then an error message is generated and returned to the user

  @MVP+1
  @US1211054
  @2018.PI03
  Scenario: US1211054::0 - Identify contract Market Number
    Given an Exari contract record exists
    When the contract record has a market number assigned
    Then the market number from the contract record is used

  @MVP+1
  @US1211054
  @2018.PI03
  Scenario: US1211054::1 - Identify contract Market Number
    Given an Exari contract record exists
    When the contract record does not have a market number assigned
    Then the zip code of the counter party provider record primary service location is used
    And used to determine market number via NDB zip to market number table crosswalk

  @MVP+1
  @US1211353
  @2018.PI03
  Scenario: US1211353::0 - Identify Product or Product Group Network
    Given an product code has been identified from the product crosswalk
    When the product requires a product network code to identify a contract master
    Then there is a means to determine when this requirement applies

  @MVP+1
  @US1211353
  @2018.PI03
  Scenario: US1211353::1 - Identify Product or Product Group Network
    Given a product requires a product network code to identify a contract master
    When there is a means to determine when this requirement applies
    Then there is information available about the method or schema to identify the network
    And the identification code or schema is used

  @MVP+1
  @US1211353
  @2018.PI03
  Scenario: US1211353::2 - Identify Product or Product Group Network
    Given an product code has been identified from the product crosswalk
    When the product does not require a product network code be used in order to identify a contract master
    Then there is a means to determine when this requirement does not apply

  @MVP+1
  @US1209973
  @2018.PI03
  Scenario: US1209973 - NDB Contract Master Lookup API event trigger
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

