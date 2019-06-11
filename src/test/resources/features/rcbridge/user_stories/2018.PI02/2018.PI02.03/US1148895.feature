# Last updated on 
@CLM_UAT
@US1148895
@2018.PI02
@2018.PI02.03
@releasePast
@iterationPast
Feature: US1148895 - Create contract query microservice Examiner (inquiry)

  @TC565194
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565194 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC565195
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565195 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565196
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC565196 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

