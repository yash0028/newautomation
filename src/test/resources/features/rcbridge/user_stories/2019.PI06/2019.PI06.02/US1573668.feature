# Last updated on 
@US1573668
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationFuture
Feature: US1573668 - CMD UTILITY (Exari/Team 1 effort) - Our Legal Entities External Data Query with Exari

  @TC720668
  @Manual
  @Functional
  Scenario: TC720668 - [RL0]
    Given an authorized user needs access to view permissible Our Legal Entities values
    When the code value list microservice is initiated
    Then the microservice provides a response of all active/valid code values

  @TC720679
  @Manual
  @Functional
  Scenario: TC720679 - [RL1]
    Given an non-authorized user needs access to view permissible Affiliation type code values
    When the code value list microservice is initiated
    Then the microservice displays a warning message 'NO ACCESS AUTHORIZED _ PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

