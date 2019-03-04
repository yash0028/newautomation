# Last updated on 
@US1531327
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationFuture
Feature: US1531327 - CMD UTILITY (Exari/Team 1 effort) - Provider Category Type External Data Query with Exari

  @TC700956
  @Manual
  @Functional
  Scenario: TC700956 - [RL0]
    Given an authorized Exari user needs to access Provider Type Category table records
    When the microservice is initiatied by Exari
    Then the microservice provides the table/list records

  @TC700962
  @Manual
  @Functional
  Scenario: TC700962 - [RL1]
    Given an nonauthorized Exari user needs to access Provider Type Category table records
    When the microservice is attempted by Exari
    Then the microservice returns a warning message 'NO ACCESS - PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

