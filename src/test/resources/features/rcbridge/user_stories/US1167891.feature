# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US1167891
@2018.PI03
Feature: US1167891 - Select Identifier

  @TC565775
  @Automated
  @Functional
  Scenario: TC565775 - [RL0]
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can search for an Identifier
    And I can select an Identifier from the search results
    #optional field

