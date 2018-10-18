# Last updated on
@US1194525
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Domain_Microservice
@PIC
@Parity
@Examiner
@F183241
@releasePast
@iterationPast
Feature: US1194525 - [Unfinished] Examiner implementation

  @TC605385
  @Manual
  @Functional
  @US1194525
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605385 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC605384
  @Manual
  @Functional
  @US1194525
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605384 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC605386
  @Manual
  @Functional
  @US1194525
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605386 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

