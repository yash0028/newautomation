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
Feature: US1236601 - Code Coverage Test Cases

  @TC564654
  @Automated
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC564654 - [RL0]
    When The units are run and the code coverage is recorded for the contract-query-api service
    Then The overall test code coverage is above 70%

  @TC564656
  @Automated
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC564656 - [RL2]
    When The units are run and the code coverage is recorded for the cosmos-updater-service service
    Then The overall test code coverage is above 70%

  @TC564657
  @Automated
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC564657 - [RL3]
    When The units are run and the code coverage is recorded for the contracts-domain service
    Then The overall test code coverage is above 70%

  @TC564658
  @Automated
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC564658 - [RL4]
    When The units are run and the code coverage is recorded for the product-crosswalk service
    Then The overall test code coverage is above 70%

  @TC564655
  @Automated
  @Functional
  @US1236601
  @2018.PI03
  @2018.PI03.02
  Scenario: TC564655 - [RL1]
    When The units are run and the code coverage is recorded for the ndb-updater-service service
    Then The overall test code coverage is above 70%

