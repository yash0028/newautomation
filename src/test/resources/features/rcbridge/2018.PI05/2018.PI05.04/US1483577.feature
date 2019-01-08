# Last updated on 
@CMD
@US1483577
@2018.PI05
@2018.PI05.04
@MVP
@CMD_UI
@releasePresent
@iterationFuture
Feature: US1483577 - CMD UTILITY - Affiliation Type code list and microservice

  @TC674588
  @Manual
  @Functional
  @CMD
  Scenario: TC674588 - [RL0]
    Given an authorized user needs to access the list
    When the user initiates the affiliation micro service
    Then the service returns the entire table records (list)

  @TC674589
  @Manual
  @Functional
  @CMD
  Scenario: TC674589 - [RL1]
    Given an non-authorized user needs to access the list
    When the user initiates the affiliation micro service
    Then the service does not provide the table records
    ###

