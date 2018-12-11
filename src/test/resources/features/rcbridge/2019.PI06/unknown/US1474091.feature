# Last updated on 
@CMD
@US1474091
@2019.PI06
@MVP
@CMD_UI
@releaseFuture
@iterationUnknown
Feature: US1474091 - CMD UTILITY TABLE - Provider Category Type table microservice

  @TC672163
  @Manual
  @Functional
  @CMD
  Scenario: TC672163 - [RL0]
    Given a user needs to query the table
    When the user provides Specialty Code and Prov Type
    Then the query response provides the matching table record data

  @TC672168
  @Manual
  @Functional
  @CMD
  Scenario: TC672168 - [RL1]
    Given a user provides a valid Specialty Code and Prov Type
    When the query response result includes more than one record
    Then the response includes the first 20 records that match
    ###

