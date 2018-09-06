# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US1167901
@2018.PI03
Feature: US1167901 - Add Operating License Type

  @TC565207
  @Automated
  @Functional
  Scenario: TC565207 - [RL0]
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Operating License Type from a predefined list
    #optional field

