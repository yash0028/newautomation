# Last updated on 
@US1858910
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1858910 - Build OCM upon initial transaction using PES Contracts API

  @TC853528
  @Manual
  @Functional
  Scenario: TC853528 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid contract transaction event occurs in Exari for the contract
    Then the initial OCM is created

  @TC868375
  @Manual
  @Functional
  Scenario: TC868375 - [RL1]
    Given the initial OCM is needed
    When discrepancies exist between UCM and PES ContractsAPI data
    Then the OCM is created based on PES ContractsAPI data

  @TC868381
  @Manual
  @Functional
  Scenario: TC868381 - [RL2]
    Given the initial OCM is needed
    When discrepancies do not exist between UCM and PES ContractsAPI data
    Then the OCM is created based on UCM data

  @TC868383
  @Manual
  @Functional
  Scenario: TC868383 - [RL3]
    Given discrepancies exist between UCM and PES ContractsAPI data
    When the OCM is created based on PES ContractsAPI data
    Then the discrepencies are recorded in the OCM
    And the contract record flagged / identifiable as using PES as source of record
    ###

