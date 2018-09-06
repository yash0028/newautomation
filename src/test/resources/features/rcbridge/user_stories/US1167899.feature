# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US1167899
@2018.PI03
Feature: US1167899 - Select Entity Type

  @TC564694
  @Automated
  @Functional
  Scenario: TC564694 - [RL0]
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Entity Type from a predefined list
    #required field

