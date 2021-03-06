# Last updated on 
@MVP
@CLM_Exari
@US948994
@2018.PI01
@2018.PI01.02
@releasePast
@iterationPast
Feature: US948994 - Verify ability to hit Exari Dev environment

  @TC564740
  @Manual
  @Functional
  @MVP
  @CLM_Exari
  Scenario: TC564740 - [RL0]
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

  @TC923006
  @Manual
  @Functional
  @MVP
  @CLM_Exari
  Scenario: TC923006 - [RL0]
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

  @TC923018
  @Manual
  @Functional
  @MVP
  @CLM_Exari
  Scenario: TC923018 - [RL0]
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

