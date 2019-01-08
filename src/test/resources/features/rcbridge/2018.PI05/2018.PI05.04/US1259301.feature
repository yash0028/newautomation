# Last updated on 
@CMD
@US1259301
@2018.PI05
@2018.PI05.04
@MVP
@CMD_UI
@releasePresent
@iterationFuture
Feature: US1259301 - CMD UTILITY - Zip to Market table and microservice

  @TC616925
  @Manual
  @Functional
  @CMD
  Scenario: TC616925 - [RL0]
    Given a user needs to query the table
    When the user provides ZipCd
    Then the query response provides the matching table record data

  @TC616926
  @Manual
  @Functional
  @CMD
  Scenario: TC616926 - [RL1]
    Given a user provides a valid ZipCd
    When the query response result includes more than one record
    Then the response includes the first 20 records that match

