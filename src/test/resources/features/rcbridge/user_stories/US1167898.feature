# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US1167898
Feature: US1167898 - Add Alternate Name

  @TC565738
  @Automated
  @Functional
  Scenario: TC565738 - [RL0]
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Alternate Name
    #optional field

