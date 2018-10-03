# Last updated on 
@US1240232
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1240232 - Modify Contract Config record (UI)

  @TC565955
  @Automated
  @Functional
  @US1240232
  @2018.PI04
  Scenario: TC565955 - [RL0]
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @TC565956
  @Automated
  @Functional
  @US1240232
  @2018.PI04
  Scenario: TC565956 - [RL1]
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

