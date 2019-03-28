# Last updated on 
@US1573667
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1573667 - CMD UTILITY - Our Legal Entities microservice to be called by Exari

  @TC720675
  @Manual
  @Functional
  Scenario: TC720675 - [RL0]
    Given an authorized user needs access to view permissible Our legal Entities values
    When the code value list microservice is initiated
    Then the microservice provides a response of all active/valid code values

  @TC720681
  @Manual
  @Functional
  Scenario: TC720681 - [RL1]
    Given an non-authorized user needs access to view permissible Our Legal Entities values
    When the code value list microservice is initiated
    Then the microservice displays a warning message 'NO ACCESS AUTHORIZED _ PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

