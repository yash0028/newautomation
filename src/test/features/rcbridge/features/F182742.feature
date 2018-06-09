# Last updated on 2018-06-08T13:42:47.840Z
@MVP
@PI02_Top3
@Parity
Feature: F182742 - Exari>NDB Physician Contracting Loading - PI02 - CF Team

  @2018.PI02
  @2018.PI02.03
  Scenario: US1160445
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.02
  Scenario: US1148674
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.03
  Scenario: US1108392
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.01
  Scenario: US1094829
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.03
  Scenario: US1160431
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1086921
    Given the Layer 7 Certification process is followed
    When the Layer 7 Certification team approves the API
    Then the Exari&gt;NDB API for the Physician payload will be an allowable API

