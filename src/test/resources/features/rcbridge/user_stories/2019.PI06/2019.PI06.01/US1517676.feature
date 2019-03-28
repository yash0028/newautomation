# Last updated on 
@US1517676
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1517676 - CMD UTILITY - Affiliation Type microservice to be called by Exari

  @TC693618
  @Manual
  @Functional
  Scenario: TC693618 - [RL0]
    Given an authorized user needs access to view permissible Affiliation type code values
    When the code value list microservice is initiated
    Then the microservice provides a response of all active/valid code values

  @TC693624
  @Manual
  @Functional
  Scenario: TC693624 - [RL1]
    Given an non-authorized user needs access to view permissible Affiliation type code values
    When the code value list microservice is initiated
    Then the microservice displays a warning message 'NO ACCESS AUTHORIZED _ PLEASE CONTACT YOUR SYSTEM ADMINISTRATOR'
    ###

