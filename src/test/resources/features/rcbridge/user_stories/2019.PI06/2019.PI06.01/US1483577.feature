# Last updated on 
@CMD
@US1483577
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1483577 - CMD UTILITY - Affiliation Type code list and microservice

  @TC674588
  @Manual
  @Functional
  @CMD
  Scenario: TC674588 - [RL0]
    Given an authorized user needs to access the list
    When the user initiates the affiliation micro service
    Then the service returns the entire table records (list)

