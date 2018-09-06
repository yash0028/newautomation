# Last updated on 
@MVP
@CLM_Exari
@US948994
@2018.PI01
Feature: US948994 - Verify ability to hit Exari Dev environment

  @TC564740
  @Automated
  @Functional
  Scenario: TC564740 - [RL0]
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

