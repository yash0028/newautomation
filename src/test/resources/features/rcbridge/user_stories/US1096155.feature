# Last updated on 
@MVP
@CLM_UAT
@US1096155
@2018.PI03
Feature: US1096155 - Flag Entities with Special Characteristics

  @TC565236
  @Automated
  @Functional
  Scenario: TC565236 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to view an Entity with a specific characteristic previously located in BIC
    Then I can view the Entity with the specific characteristic in the Entity Management Solution

