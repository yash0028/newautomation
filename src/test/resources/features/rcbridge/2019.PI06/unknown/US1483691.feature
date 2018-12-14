# Last updated on 
@US1483691
@2019.PI06
@MVP
@CMD_UI
@releaseFuture
@iterationUnknown
Feature: US1483691 - CMD UTILITY MICROSERVICE - Provider Category Type integration with Exari

  @TC674587
  @Manual
  @Functional
  Scenario: TC674587 - [RL0]
    Given an authorized user needs access to view permissible Affiliation type records
    When the microservice is called by Exari
    Then the microservice provides the table/list records

