# Last updated on 
@US1600337
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1600337 - Conitnued - CMD UTILITY (Exari/Team 1 effort) - Provider Category Type External Data Query with Exari - Step 1 Design phase

  @TC731845
  @Manual
  @Functional
  Scenario: TC731845 - [RL0]
    Given an authorized Exari user needs to access Provider Type Category table records
    When the microservice is initiatied by Exari
    Then the microservice provides the table/list records

  @TC731846
  @Manual
  @Functional
  Scenario: TC731846 - [RL1]
    Given an nonauthorized Exari user needs to access Provider Type Category table records
    When the microservice is attempted by Exari
    Then the microservice returns a warning message 'NO ACCESS - PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

