# Last updated on 
@MSPS
@US1295290
@2018.PI03
Feature: US1295290 - Allow user to specify version number

  @TC564469
  @Automated
  @Functional
  Scenario: TC564469 - [RL0] Verification of Version Number
    Given a user is requesting a professional fee schedule
    When they pass a version number
    Then that specific version fee schedule is returned

