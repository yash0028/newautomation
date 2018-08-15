# Last updated on 
@MVP
@PI02_Top3
@Parity
@F182742
Feature: F182742 - Exari>NDB Physician Contracting Loading - PI02 - CF Team

  @CLM_UAT
  @US1160445
  @2018.PI02
  Scenario: US1160445 - [Continued] NDB Driver Module – NDB Cross Functional Team - Contract Master
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @CLM_UAT
  @US1108392
  @2018.PI02
  Scenario: US1108392 - [Continued] NDB API Creation – NDB Cross Functional Team - Part 2
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @CLM_UAT
  @US1086921
  @2018.PI02
  Scenario: US1086921 - [Continued] Exari>NDB Physician payload API - Layer 7 Certification
    Given the Layer 7 Certification process is followed
    When the Layer 7 Certification team approves the API
    Then the Exari>NDB API for the Physician payload will be an allowable API

  @CLM_UAT
  @US1169107
  @2018.PI02
  Scenario: US1169107 - [Unfinished] NDB Driver Module – NDB Cross Functional Team - Contract Master
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @CLM_UAT
  @US1148674
  @2018.PI02
  Scenario: US1148674 - [Unfinished] NDB API Creation – NDB Cross Functional Team - Part 2
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @CLM_UAT
  @US1193405
  @2018.PI02
  Scenario: US1193405 - NDB Driver Module – NDB Cross Functional Team - Contract Master - Cancel Transactions (UNET / COSMOS)
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB with cancel date and rsn code
    Then NDB should cancel the contract in the 'E' PNC contract screen successfully within NDB and should also cancel the panel in W screen for cosmos

  @CLM_UAT
  @US1193220
  @2018.PI02
  Scenario: US1193220 - [Unfinished] Exari>NDB Physician payload API - Layer 7 Certification
    Given the Layer 7 Certification process is followed
    When the Layer 7 Certification team approves the API
    Then the Exari>NDB API for the Physician payload will be an allowable API

  @CLM_UAT
  @US1094829
  @2018.PI02
  Scenario: US1094829 - NDB API Creation – NDB Cross Functional Team
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @CLM_UAT
  @US1160431
  @2018.PI02
  Scenario: US1160431 - NDB API Creation – NDB Cross Functional Team - Contract Master
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

