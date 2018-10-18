# Last updated on
@US1236601
@2018.PI03
@2018.PI03.02
@MVP
@10/1_Physician
@Priority_1
@Transaction
@Parity
@F177202
@releasePast
@iterationPast
Feature: US1236601 - Code Coverage Test Cases

  @TC615273
  @Manual
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC615273 - [RL0]
    When The units are run and the code coverage is recorded for the contract-query-api service
    Then The overall test code coverage is above 70%

  @TC615276
  @Manual
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC615276 - [RL3]
    When The units are run and the code coverage is recorded for the contracts-domain service
    Then The overall test code coverage is above 70%

  @TC615275
  @Manual
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC615275 - [RL2]
    When The units are run and the code coverage is recorded for the cosmos-updater-service service
    Then The overall test code coverage is above 70%

  @TC615277
  @Manual
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC615277 - [RL4]
    When The units are run and the code coverage is recorded for the product-crosswalk service
    Then The overall test code coverage is above 70%

  @TC615274
  @Manual
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC615274 - [RL1]
    When The units are run and the code coverage is recorded for the ndb-updater-service service
    Then The overall test code coverage is above 70%

