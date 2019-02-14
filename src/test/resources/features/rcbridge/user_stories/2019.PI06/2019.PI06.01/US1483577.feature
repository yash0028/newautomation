# Last updated on 
@CMD
@US1483577
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1483577 - CMD UTILITY - Affiliation Type code list and microservice

  @TC727180
  @Manual
  @Functional
  @CMD
  Scenario: TC727180 - [RL0]
    Given a user needs to query the table data
    When the user initiates the affiliation micro service
    Then the service returns the entire table records

