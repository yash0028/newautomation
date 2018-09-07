# Last updated on 
@CLM_UAT
@US1096246
@2018.PI02
Feature: US1096246 - Create contract query microservice (inquiry)

  @TC564835
  @Automated
  @Functional
  Scenario: TC564835 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC564834
  @Automated
  @Functional
  Scenario: TC564834 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC564836
  @Automated
  @Functional
  Scenario: TC564836 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned
