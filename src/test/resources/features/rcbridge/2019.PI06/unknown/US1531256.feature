# Last updated on 
@US1531256
@2019.PI06
@MVP
@CMD_UI
@releaseFuture
@iterationUnknown
Feature: US1531256 - CMD UTILITY (Exari/Team 1 effort) - Affiliation Type External Data Query with Exari

  @TC700959
  @Manual
  @Functional
  Scenario: TC700959 - [RL0]
    Given an authorized user needs access to view permissible Affiliation type code values
    When the code value list microservice is initiated
    Then the microservice provides a response of all active/valid code values

  @TC700966
  @Manual
  @Functional
  Scenario: TC700966 - [RL1]
    Given an non-authorized user needs access to view permissible Affiliation type code values
    When the code value list microservice is initiated
    Then the microservice displays a warning message 'NO ACCESS AUTHORIZED _ PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

