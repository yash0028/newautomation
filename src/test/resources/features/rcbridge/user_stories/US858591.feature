# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US858591
@2018.PI03
Feature: US858591 - Add Entity Name

  @TC565477
  @Automated
  @Functional
  Scenario: TC565477 - [RL0]
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Entity Name
    #required field

