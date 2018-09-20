# Last updated on 
@US1202232
@2018.PI03
@2018.PI03.01
Feature: US1202232 - Addition of new Reassign fields in API

  @TC564903
  @Automated
  @Functional
  Scenario: TC564903 - [RL0]
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

