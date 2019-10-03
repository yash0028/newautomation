# Last updated on 
@US1992261
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US1992261 - CMD and OCM Alignment - EFF START DT - add new column to PILOT PROD INDIV AND GRPS table

  @TC954877
  @Manual
  @Functional
  Scenario: TC954877 - [RL0]
    Given a new record is added to the table
    When the table record is added to the database
    Then the effective start date is also stored as part of the table record

  @TC1004539
  @Manual
  @Functional
  Scenario: TC1004539 - [RL1]
    Given an existing table record is updated
    When the effective start date of the record is changed
    Then the effective start date change is recorded in the database

  @TC1004540
  @Manual
  @Functional
  Scenario: TC1004540 - [RL2]
    Given a valid contract transaction is received
    When data from the PILOT_PROD INDIV AND GRPS table is needed for purposes supporting the OCM
    And the transaction EffectiveDate < Effective Start Date of the table record
    Then the table record IS NOT available for OCM processes

  @TC1004541
  @Manual
  @Functional
  Scenario: TC1004541 - [RL3]
    Given a valid contract transaction is received
    When data from the PILOT_PROD INDIV AND GRPS table is needed for purposes supporting the OCM
    And the transaction EffectiveDate >= the Effective Start Date of the table record
    Then the table record IS available for OCM processes

