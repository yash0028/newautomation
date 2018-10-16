# Last updated on 
@US1233109
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1233109 - Create CMD Contract Config transaction event schema

  @TC565055
  @Automated
  @Functional
  @US1233109
  @2018.PI04
  @2018.PI04.04
  Scenario: TC565055 - [RL0]
    Given an Exari contract is created
    When the contract is executed in Exari
    Then a CMD record is created and stored

  @TC565056
  @Automated
  @Functional
  @US1233109
  @2018.PI04
  @2018.PI04.04
  Scenario: TC565056 - [RL1]
    Given an CMD record exists
    When a CMD Status inquiry request is made
    Then a CMD Status inquiry response is generated

