# Last updated on 
@US1483691
@2018.PI05
@2018.PI05.04
@MVP
@CMD_UI
@releasePresent
@iterationFuture
Feature: US1483691 - CMD UTILITY - Provider Category Type microservice integration with Exari

  @TC674587
  @Manual
  @Functional
  Scenario: TC674587 - [RL0]
    Given an authorized Exari user needs to access Provider Type Category table records
    When the microservice is initiatied by Exari
    Then the microservice provides the table/list records

  @TC693616
  @Manual
  @Functional
  Scenario: TC693616 - [RL1]
    Given an nonauthorized Exari user needs to access Provider Type Category table records
    When the microservice is attempted by Exari
    Then the microservice returns a warning message 'NO ACCESS - PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

