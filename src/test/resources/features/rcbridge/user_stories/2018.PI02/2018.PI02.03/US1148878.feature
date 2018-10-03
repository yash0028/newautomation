# Last updated on 
@CLM_UAT
@US1148878
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Domain_Microservice
@PIC
@Parity
@Examiner
@F183241
Feature: US1148878 - Create contract query microservice PIC (inquiry)

  @TC565908
  @Automated
  @Functional
  @CLM_UAT
  @US1148878
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565908 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565907
  @Automated
  @Functional
  @CLM_UAT
  @US1148878
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565907 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC565909
  @Automated
  @Functional
  @CLM_UAT
  @US1148878
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565909 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

