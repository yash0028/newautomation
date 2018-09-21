# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US858665
Feature: US858665 - Add Entity Relationship Type

  @TC564554
  @Automated
  @Functional
  Scenario: TC564554 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can select a Relationship Type to further define the relationship between the Entities

