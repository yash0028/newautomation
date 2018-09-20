# Last updated on 
@US1232967
@2018.PI03
@2018.PI03.02
Feature: US1232967 - Addition of PCP Override field in API

  @TC565616
  @Automated
  @Functional
  Scenario: TC565616 - [RL0]
    Given PCP value is received in payload
    When PCP = P / S / Other valid value
    Then the PCP indicator field is updated in NDB

